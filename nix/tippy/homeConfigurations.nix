{
  inputs,
  cell,
}: {
  surface = {
    home = rec {
      homeDirectory = "/home/${username}";
      username = "tippy";
    };
    imports = cell.homeSuites.tippy ++ cell.homeSuites.desktop;
  };
}
