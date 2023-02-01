{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    home-manager
    tmux
    git
    vim
    screen
    deploy-rs
    wget
    curl
    cachix
    gptfdisk
    unzip
  ];
}
