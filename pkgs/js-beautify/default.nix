{ pkgs }:
with (import ~/github/moretea/yarn2nix { inherit pkgs; });
let
  original = mkYarnPackage {
    name = "js-beautify";
    src = ./.;
    yarnNix = ./yarn.nix;
    publishBinsFor = [ "js-beautify" ];
  };
in pkgs.stdenv.mkDerivation {
  name = "js-beautify";
  src = original;
  installPhase = ''
    mkdir -p $out/bin

    ln -s $src/libexec/js-beautify/node_modules/js-beautify/node_modules/.bin/html-beautify $out/bin
    ln -s $src/libexec/js-beautify/node_modules/js-beautify/node_modules/.bin/js-beautify $out/bin
    ln -s $src/libexec/js-beautify/node_modules/js-beautify/node_modules/.bin/css-beautify $out/bin
  '';
}
