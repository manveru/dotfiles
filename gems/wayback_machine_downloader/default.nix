{ bundlerApp }:
bundlerApp {
  pname = "wayback_machine_downloader";
  exes = ["wayback_machine_downloader"];
  gemdir = ./.;
}
