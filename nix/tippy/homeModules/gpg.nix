{ config, pkgs, ... }:

{
  services.gpg-agent = {
    enable = true;
    pinentryFlavor = "curses";
  };
  programs.gpg = { enable = true; };
  environment.persistence.users.directories = [
    ".gnupg"
  ];
}

