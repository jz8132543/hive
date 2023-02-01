{ inputs
, cell
,
}: {
  surface = {
    imports = cell.homeSuites.tippy ++ cell.homeSuites.desktop;
  };
}
