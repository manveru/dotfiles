{ bundlerApp }:
bundlerApp {
  pname = "xing-scripts";
  exes = ["xing"];
  gemdir = ./.;
}
