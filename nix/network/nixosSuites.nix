{
  inputs,
  cell,
}: rec {
  default = [
    cell.nixosModules.network
  ];
}
