{ pkgs }:
with (import ~/github/moretea/yarn2nix { inherit pkgs; });
let
  original = mkYarnPackage {
    name = "elm-live";
    src = ./.;
    yarnNix = ./yarn.nix;
    publishBinsFor = [ "elm-live" ];
  };
in pkgs.stdenv.mkDerivation {
  name = "elm-live";
  src = original;
  installPhase = ''
    mkdir -p $out/bin

    ln -s $src/libexec/elm-live/node_modules/elm-live/node_modules/.bin/elm-live $out/bin
  '';
}
