{ pkgs, ... }:
with builtins;
let
  hostname = replaceStrings ["\n"] [""] (readFile /etc/hostname);
  private = import ./private.nix { inherit pkgs; };
  hosts = {
    tau = ./tau.nix;
    kappa = ./kappa.nix;
    nu = ./nu.nix;
  };
in private // {
  imports = [
    ./common.nix
    hosts.${hostname}
  ];
}
