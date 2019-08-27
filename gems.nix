{ pkgs, ... }: {
  home.packages = builtins.map (loc: pkgs.callPackage loc {}) [
    # ./gems/xing-scripts
    # ./gems/docker-build
    # ./gems/docker-sync
    ./gems/rubocop
    ./gems/wayback_machine_downloader
  ];
}
