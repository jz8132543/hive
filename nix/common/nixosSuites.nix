{
  inputs,
  cell,
}: rec {
  default = [
    cell.nixosModules.base
    cell.nixosModules.cloud
    cell.nixosModules.impermanence
    cell.nixosModules.nix
    cell.nixosModules.openssh
    cell.nixosModules.tmp
  ];
}
