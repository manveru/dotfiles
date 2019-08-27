{ pkgs, ... }: {
  home.packages = let
    hie = pkgs.callPackage ./pkgs/hie { };
    js-beautify = pkgs.callPackage ./pkgs/js-beautify { };

    pkgsconfig = { config = { allowUnfree = true; }; };

    nixfmt = import (fetchTarball {
      url = "https://github.com/serokell/nixfmt/archive/master.tar.gz";
    }) { inherit pkgs; };

    lorri = import (fetchTarball {
      url = "https://github.com/target/lorri/archive/rolling-release.tar.gz";
    }) { };

    nixpkgs-unstable = import (fetchTarball {
      url =
        "https://github.com/nixos/nixpkgs-channels/archive/nixos-unstable.tar.gz";
    }) { };

  in with pkgs; [
    nixpkgs-unstable.pijul
    js-beautify
    i3lock-fancy
    kubernetes
    # lorri
    minikube
    nixfmt
    discord
    magic-wormhole
    nixpkgs-unstable.insomnia
    lastpass-cli
    kitty
    font-manager
    sqlite
    # hie.hies
    # hie.ghc
    # hie.stack
  ];
}
