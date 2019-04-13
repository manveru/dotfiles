{ }:
let
  hie-nix-source = fetchGit {
    url = "https://github.com/domenkozar/hie-nix";
    ref = "master";
    # owner = "domenkozar";
    # repo = "hie-nix";
    # rev = "6794005f909600679d0b7894d0e7140985920775";
    # sha256 = "0pc90ns0xcsa6b630d8kkq5zg8yzszbgd7qmnylkqpa0l58zvnpn";
  };

  hie-nix = import hie-nix-source {};
  pkgs = (import (import (hie-nix-source + "/fetch-nixpkgs.nix")) {});
in {
  hies = hie-nix.hies;
  ghc = pkgs.ghc;
  stack = pkgs.stack;
}
