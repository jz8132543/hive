{ inputs
, cell
,
}: {
  desktop = [
    cell.nixModules.common
    cell.nixModules.fonts
    cell.nixModules.i18n
    cell.nixModules.nvidia
    cell.nixModules.sway
    cell.nixModules.v2ray
    cell.nixModules.virtualisation
  ];
}
