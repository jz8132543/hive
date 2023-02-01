{
  inputs,
  cell,
}: {
  default.imports = [
    inputs.cell.common.nixosSuites.default
  ];
  desktop = {
    default.imports = [
      inputs.cell.desktop.nixosSuites.desktop
    ];
  };
}
