{ inputs
, cell
,
}:
{
  surface = import ./nixosConfigurations/surface { inherit inputs cell; };
}
