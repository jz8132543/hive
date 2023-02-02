{
  inputs,
  cell,
}: let
  l = inputs.nixpkgs.lib // builtins;
  nixpkgs = inputs.nixpkgs.appendOverlays ([] ++ cell.overlays.desktop);
in {
  inherit nixpkgs;

  mkHome = user: host: {
    imports =
      [
        ({pkgs, ...}: {
          home-manager.users.${user} = {
            inherit (cell.homeConfigurations."${user}"."${host}") imports;
          };
        })
      ]
      ++ l.optionals nixpkgs.stdenv.isLinux [
        cell.userProfiles.${user}
      ];
  };

  nixConfig = inputs.cells.bootstrap.lib.nixConfig.guangtao;
}
