{ bundlerApp }:
bundlerApp {
  pname = "xing-docker_build";
  exes = ["docker-build"];
  gemdir = ./.;
}
