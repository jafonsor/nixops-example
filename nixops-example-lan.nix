{
  nixops-example =
    { config, pkgs, ... }: {
      deployment.targetHost = "192.168.1.200";
    };
}