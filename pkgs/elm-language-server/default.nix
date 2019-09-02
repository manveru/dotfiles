{ pkgs }:
with (import ~/github/moretea/yarn2nix { inherit pkgs; });
let
  original = mkYarnPackage {
    name = "elm-language-server";
    src = ./.;
    yarnNix = ./yarn.nix;
    publishBinsFor = [ "elm-language-server" ];
  };
in pkgs.stdenv.mkDerivation {
  name = "elm-language-server";
  src = original;
  installPhase = ''
    mkdir -p $out/bin

    ln -s $src/libexec/elm-language-server/node_modules/elm-language-server/node_modules/.bin/elm-language-server $out/bin
  '';
}
