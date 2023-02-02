{
  inputs,
  cell,
  ...
}: rec {
  bee.system = "x86_64-linux";
  bee.home = inputs.home;
  bee.pkgs = import inputs.nixos {
    inherit (inputs.nixpkgs) system;
    config.allowUnfree = true;
  };
  imports =
    [
      ./hardware-configuration.nix
    ]
    ++ cell.nixosProfiles.default
    ++ cell.nixosProfiles.desktop.default;
}
