{
  inputs,
  cell,
  ...
}: let
  init = {modulesPath, ...}: {
    ### root password is empty by default ###
    imports = [
      ./hardware-configuration.nix
      (modulesPath + "/profiles/qemu-guest.nix")
    ];
    system.stateVersion = "22.11";
  };
in rec {
  bee.system = "x86_64-linux";
  bee.home = inputs.home;
  bee.pkgs = import inputs.nixos {
    inherit (inputs.nixpkgs) system;
    config.allowUnfree = true;
  };
  imports =
    [
      bee.home.nixosModules.home-manager
      init
    ]
    ++ [
      {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
      }
    ]
    ++ cell.nixosSuites.desktop;
}
