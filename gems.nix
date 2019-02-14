{ pkgs, ... }: {
  home.packages = let
    xing-scripts = pkgs.callPackage ./gems/xing-scripts {};
  in [ xing-scripts ];
}
