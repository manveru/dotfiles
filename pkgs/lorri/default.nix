{ pkgs }:
let
  lorri-source = fetchGit {
    url = https://github.com/target/lorri;
    # ref = "master";
    ref = "rolling-release";
  };
in (import lorri-source) { inherit pkgs; src = lorri-source; }
