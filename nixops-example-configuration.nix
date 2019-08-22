{
  network.description = "nixops example";

  nixops-example =
    {config, pkgs, ...}:
      let
        nixops-example = import ./nixops-example/default.nix { inherit pkgs; };
      in
        {
          networking.hostName = "nixops example";
          networking.firewall.allowedTCPPorts = [ 22 29051 ];
          environment.systemPackages = [ nixops-example ];
          systemd.services.nixops-example = {
            description = "nixops example of web server deploy";
            wantedBy = [ "multi-user.target" ];
            after = [ "network.target" ];
            serviceConfig = {
              ExecStart = "${nixops-example}/bin/nixops-example";
            };
          };
        };

}