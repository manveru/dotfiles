{ pkgs, ... }:
{
  imports = [
    ./dunst.nix
    ./files.nix
    ./gems.nix
    ./git.nix
    ./i3.nix
    ./packages.nix
    ./polybar.nix
    ./private.nix
    ./rofi.nix
    ./termite.nix
    ./unclutter.nix
    ./xresources.nix
    ./xsession.nix
    ./zsh.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.sessionVariables = {
    LC_CTYPE = "en_US.UTF-8";
    # GTK_IM_MODULE = "ibus";
    # QT_IM_MODULE = "ibus";
    # XMODIFIERS = "@im=ibus";
    XMODIFIERS = "@im=fcitx";
    XMODIFIER = "@im=fcitx";
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    BROWSER = "firefox";
    PAGER = "less -R";
  };

  xdg.enable = true;

  gtk = {
    iconTheme.package = pkgs.gnome3.gnome_themes_standard;
    theme.package = pkgs.gnome3.gnome_themes_standard;
  };

  services = {
    pasystray.enable = true;
    parcellite.enable = true;
    blueman-applet.enable = true;

    kdeconnect = {
      enable = true;
      indicator = true;
    };

    gnome-keyring = {
      enable = true;
      components = ["secrets" "ssh"];
    };

    gpg-agent = {
      enable = true;
      defaultCacheTtl = 1800;
      enableSshSupport = true;
    };

    # seafile.enable = true;

    redshift = {
      enable = true;
      latitude = "47.6093";
      longitude = "12.1844";
      tray = true;
      brightness = {
        day = "1";
        night = "0.5";
      };
    };
  };

  programs = {
    direnv = {
      enable = true;
      enableZshIntegration = true;
    };
    command-not-found.enable = true;
    feh.enable = true;

    home-manager = {
      enable = true;
      path = https://github.com/rycee/home-manager/archive/master.tar.gz;
      # path = "/home/manveru/github/rycee/home-manager";
    };

    pidgin = {
      enable = true;
      plugins = with pkgs; [
        pidginotr
        pidginosd
        pidgin-skypeweb
        pidgin-opensteamworks
      ];
    };

    firefox = {
      enable = true;
      enableAdobeFlash = false;
      enableGoogleTalk = true;
      enableIcedTea = true;
    };
  };
}
