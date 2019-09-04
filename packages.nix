{ pkgs, ... }: {
  home.packages = let
    hie = pkgs.callPackage ./pkgs/hie { };
    js-beautify = pkgs.callPackage ./pkgs/js-beautify { };
    elm-language-server = pkgs.callPackage ./pkgs/elm-language-server { };
    elm-live = pkgs.callPackage ./pkgs/elm-live { };

    pkgsconfig = { config = { allowUnfree = true; }; };

    nixfmt = import (fetchTarball {
      url = "https://github.com/serokell/nixfmt/archive/master.tar.gz";
    }) { };

    lorri = import (fetchTarball {
      url = "https://github.com/target/lorri/archive/rolling-release.tar.gz";
    }) { };

    nixpkgs-unstable = import (fetchTarball {
      url =
        "https://github.com/nixos/nixpkgs-channels/archive/nixos-unstable.tar.gz";
    }) pkgsconfig;

    yarn2nixSource = import (fetchTarball {
      url = ''
        https://github.com/moretea/yarn2nix/archive/780e33a07fd821e09ab5b05223ddb4ca1
            5ac663f.tar.gz'';
      sha256 = "1f83cr9qgk95g3571ps644rvgfzv2i4i7532q8pg405s4q5ada3h";
    }) { inherit pkgs; };

  in with pkgs; [
    discord
    elm-language-server
    elm-live
    font-manager
    # hie.ghc
    # hie.hies
    # hie.stack
    i3lock-fancy
    js-beautify
    kitty
    kubernetes
    lastpass-cli
    # lorri
    magic-wormhole
    minikube
    nixfmt
    nixpkgs-unstable.elmPackages.elm
    nixpkgs-unstable.elmPackages.elm-analyse
    nixpkgs-unstable.elmPackages.elm-doc-preview
    nixpkgs-unstable.elmPackages.elm-format
    nixpkgs-unstable.elmPackages.elmi-to-json
    nixpkgs-unstable.elmPackages.elm-test
    nixpkgs-unstable.insomnia
    nixpkgs-unstable.pijul
    nixpkgs-unstable.python37Packages.python-language-server
    nixpkgs-unstable.starship
    nixpkgs-unstable.vscode-with-extensions
    sqlite
    tokei
    yarn
    yarn2nixSource.yarn2nix
  ];
}
