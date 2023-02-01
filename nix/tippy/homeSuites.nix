{ inputs
, cell
,
}:
{
  tippy = [
    cell.homeModules.apps
    cell.homeModules.direnv
    cell.homeModules.fish
    cell.homeModules.git
    cell.homeModules.gpg
    cell.homeModules.neovim
    cell.homeModules.ssh
    cell.homeModules.tmux
  ];
}
