{ inputs
, config
, lib
, cell
,
}: {
  config = {
    sops.secretsDir = lib.mkDefault ../keys;
    sops.gnupg.sshKeyPaths = [ ];
    sops.age.sshKeyPaths = lib.mkDefault [
      "/persist/etc/ssh/ssh_host_ed25519_key"
    ];
  };

}
