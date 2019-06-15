{ pkgs, ... }:
with builtins;
let
  hostname = replaceStrings ["\n"] [""] (readFile /etc/hostname);
  hosts = {
    tau = ./tau.nix;
    kappa = ./kappa.nix;
    pi = ./pi.nix;
  };
in {
  imports = [
    ./common.nix
    hosts.${hostname}
  ];
}
