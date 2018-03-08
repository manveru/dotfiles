{ pkgs, ... }:
{
  programs = {
    rofi = {
      enable = true;
      # theme = "sidestyle.rasi";
      rowHeight = 2;
      extraConfig = ''
        rofi.color-enabled: true
        rofi.sidebar-mode: true
        rofi.show-icons: true
      '';
    };
  };
}
