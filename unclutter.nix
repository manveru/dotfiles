{ pkgs, ... }:
{
  services = {
    unclutter = {
      enable = true;
      extraOptions = [ "exclude-root" "ignore-scrolling" ];
      threshold = 1;
      timeout = 1;
    };
  };
}
