{
  inputs,
  cell,
}: {
  default = [
    inputs.cells.common.nixosSuites.default
  ];
  desktop = {
    default = [
      inputs.cells.desktop.nixosSuites.desktop
    ];
  };
}
