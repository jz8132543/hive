{ pkgs, ... }:

{
  networking = {
    domain = "dora.im";
    search = [ "dora.im" ];
    firewall.enable = false;
    nameservers = [
      "1.1.1.1"
      "9.9.9.9"
    ];
    resolvconf.extraConfig = ''
      #!/bin/sh -e
      ${pkgs.gnused}/bin/sed -i "/192.168/d" /etc/resolv.conf
      ${pkgs.gnused}/bin/sed -i "/fe80/d" /etc/resolv.conf
    '';
  };
  boot = {
    kernelModules = [ "tcp_bbr" ];
    kernel.sysctl."net.ipv4.tcp_congestion_control" = "bbr";
  };
  programs = {
    traceroute.enable = true;
    mtr.enable = true;
    wireshark.enable = true;
  };
  environment.systemPackages = with pkgs; [
    curl
    dnsutils
    inetutils
    iputils
    nftables
  ];
  zramSwap.enable = true;
  time.timeZone = "Asia/Shanghai";
}
