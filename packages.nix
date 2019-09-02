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
    nixpkgs-unstable.starship
    nixpkgs-unstable.vscode-with-extensions
    nixpkgs-unstable.elmPackages.elm
    nixpkgs-unstable.elmPackages.elm-test
    nixpkgs-unstable.elmPackages.elm-format
    nixpkgs-unstable.elmPackages.elm-analyse
    nixpkgs-unstable.elmPackages.elm-doc-preview
    nixpkgs-unstable.elmPackages.elmi-to-json
    yarn2nixSource.yarn2nix
    yarn
    elm-language-server
    elm-live
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
