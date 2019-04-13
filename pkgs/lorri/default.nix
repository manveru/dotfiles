{ pkgs }:
let
  lorri-source = fetchGit {
    url = https://github.com/target/lorri;
    ref = "rolling-release";
  };
in (import lorri-source) { inherit pkgs; src = lorri-source; }
