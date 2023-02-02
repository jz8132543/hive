{
  inputs,
  cell,
}: {
  default.imports = [
    inputs.cells.common.nixosSuites.default
  ];
  desktop = {
    default.imports = [
      inputs.cells.desktop.nixosSuites.desktop
    ];
  };
}
