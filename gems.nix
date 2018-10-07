{ pkgs, ... }: {
  home.packages = let
    gems = pkgs.bundlerEnv {
      ruby = pkgs.ruby_2_5;
      name = "home-gems";
      gemdir = ./gems;
    };
  in [
    gems.wrappedRuby
    (pkgs.lowPrio gems)
  ];
}
