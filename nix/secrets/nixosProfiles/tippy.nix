{ inputs
, cell
,
}: {
  config = {
    sops.secretsDir = ../keys;
    sops.gnupg.sshKeyPaths = [ ];
    sops.age.sshKeyPaths = [
      "/persist/etc/ssh/ssh_host_ed25519_key"
    ];
  };

}
