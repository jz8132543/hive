{ pkgs, lib, inputs, ... }:

{
  programs.neovim = {
    enable = true;
    # package = pkgs.neovim-nightly;
    vimAlias = true;
    vimdiffAlias = true;
  };

  home.packages = with pkgs; [
    nil
    nixpkgs-fmt
    nix-ld
    nodejs
    nodePackages.npm
  ];
  home.global-persistence = {
    directories = [
      ".local/share/nvim"
      ".config/nvim"
    ];
  };
  # home.file.neovim = {
  #   source = inputs.nvim-config;
  #   target = ".config/nvim";
  #   recursive = true;
  # };
}
