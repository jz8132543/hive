{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  nix = {
    settings = {
      nix-path = [ "nixpkgs=${pkgs.path}" ];
      allowed-users = [ "@users" ];
      trusted-users = [ "root" "@wheel" ];
      auto-optimise-store = true;
      system-features = [ ];
      keep-outputs = true;
      keep-derivations = true;
      fallback = true;
    };
    extraOptions = ''
      experimental-features = nix-command flakes
      system-features = kvm big-parallel
      warn-dirty = false
    '';
    package = pkgs.nixFlakes; # or versioned attributes like nixVersions.nix_2_8
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 3d";
    };
  };
}
