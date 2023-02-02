{
  inputs,
  cell,
}: let
  inherit (cell) nixosProfiles;
  inherit (inputs) nixpkgs;
in {
  desktop = with nixosProfiles;
    [
      default
      desktop.default
    ]
    ++ [
      (cell.lib.mkHome "tippy" "desktop")
      cell.userProfiles.root
    ]
    ++ inputs.cells.secrets.nixosSuites.default;
}
