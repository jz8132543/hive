{
  inputs,
  cell,
}: {
  tippy = {
    desktop.imports = cell.homeSuites.tippy ++ cell.homeSuites.desktop;
  };
}
