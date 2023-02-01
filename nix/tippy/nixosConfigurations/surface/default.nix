{ inputs, cell, ... }:

rec {
  imports = [
    ./hardware-configuration.nix
  ]
  ++ cell.nixosSuites.default
  ++ cell.nixosSuites.desktop;
}
