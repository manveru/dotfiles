{ pkgs, ... }: {
  home.packages = let
    # TODO: check rsibreak skim alacritty mpv
    lorri = pkgs.callPackage ./pkgs/lorri { };
    hie = pkgs.callPackage ./pkgs/hie { };

    pkgsconfig = { config = { allowUnfree = true; }; };
    nixfmt = import (fetchTarball {
      url = "https://github.com/serokell/nixfmt/archive/master.tar.gz";
    }) { inherit pkgs; };
  in with pkgs; [
    i3lock-fancy
    kubernetes
    lorri
    minikube
    nixfmt
    discord
    magic-wormhole
  ];
}
