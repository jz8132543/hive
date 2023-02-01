{
  inputs,
  cell,
}: rec {
  default = {
    imports = [inputs.impermanence.nixosModules.impermanence];
    environment.global-persistence = {
      files = [
        "/etc/machine-id"
      ];
    };
  };
}
