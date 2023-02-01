{ inputs, cell, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ]
  ++ cell.nixosSuites.default
  ++ cell.nixosSuites.desktop;
  nix.settings.substituters = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];
  system.stateVersion = "22.11";
}
