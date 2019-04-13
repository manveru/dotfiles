{ pkgs, ... }: {
  home.packages = [
    (pkgs.callPackage ./gems/xing-scripts {})
    (pkgs.callPackage ./gems/docker-build {})
  ];
}
