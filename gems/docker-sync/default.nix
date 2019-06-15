{ bundlerApp }:
bundlerApp {
  pname = "docker-sync";
  exes = ["docker-sync"];
  gemdir = ./.;
}
