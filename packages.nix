{ pkgs, ... }: {
  home.packages = let
    go             = pkgs.go_1_11;
    buildGoPackage = pkgs.buildGoPackage.override { inherit go; };
    gotools        = pkgs.gotools.override { inherit go buildGoPackage; };
    gocode         = pkgs.gocode.override { inherit buildGoPackage; };
    dep            = pkgs.dep.override { inherit buildGoPackage; };
    godef          = pkgs.godef.override { inherit buildGoPackage; };
    nixpkgs-unstable = import <nixpkgs-unstable> { config = { allowUnfree = true; }; };
    nixpkgs-seafile = import (fetchTarball {
      url = https://github.com/schmittlauch/nixpkgs/archive/f135007e8c579dfd6e7dc83fdf9e6c83706f317f.tar.gz;
      sha256 = "06b58xjkrhpd6z9vx19g6jgx9pkb0ihay3aqgyqpbipc63hvpa6g";
    }) {};
    nixpkgs-master = import (fetchGit { url = https://github.com/nixos/nixpkgs; ref = "master"; }) { config = { allowUnfree = true; }; };
  in with pkgs; [
    afl
    anki
    apacheHttpd
    aria2
    aspell
    aspellDicts.de
    aspellDicts.en
    aspellDicts.en-computers
    aspellDicts.en-science
    audio-recorder
    awscli
    bat
    breeze-icons
    bundix
    # calamares-3.1.10
    cdrtools   # CD/DVD/BluRay command line recording software
    cheat      # allows you to create and view interactive cheatsheets on the command-line
    chromium
    cmatrix
    compton
    cool-retro-term
    #cpuminer-multi
    ctags
    davmail
    dep
    dhall      # A configuration language guaranteed to terminate
    dhall-bash # Compile Dhall to Bash
    dhall-json # Compile Dhall to JSON or YAML
    dhall-nix  # Dhall to Nix compiler
    dhall.prelude
    dhall-text # Template text using Dhall
    discord
    dosbox
    duff
    elixir
    entr
    erlang
    evince
    exiv2
    ffmpeg
    ffmpegthumbs
    fzf
    fzy
    gimp
    gist
    gitAndTools.git-crypt
    gitAndTools.git-extras
    gitAndTools.hub
    git-hub
    git-lfs
    glxinfo
    gnome3.dconf
    gnome3.gcr
    gnome3.seahorse
    gnupg
    go
    godef
    google-chrome
    # gotools
    gparted
    graphviz # conflicts with patchwork
    gtypist
    gucharmap
    hex2nix
    hfsprogs
    hicolor-icon-theme
    hunspell
    hunspellDicts.en-us
    i3lock-color
    i3lock-fancy
    i3lock-pixeled
    # ibus-with-plugins
    icdiff
    inkscape
    insomnia
    jdk
    jitsi
    blink
    ekiga
    belle-sip
    sipsak
    sofia_sip
    kbfs
    kdeApplications.dolphin
    kdeApplications.dolphin-plugins
    kdeApplications.kdegraphics-thumbnailers
    kdeApplications.kio-extras
    kdeApplications.print-manager
    keepassxc
    kdeFrameworks.kemoticons
    keychain
    keymon
    khelpcenter
    kdeFrameworks.kiconthemes
    konsole
    kubernetes
    libcaca
    libnotify
    libreoffice
    libxfs
    linkchecker
    lnav
    lyx
    mc
    minecraft
    minikube
    mkpasswd
    networkmanagerapplet
    # nixpkgs-unstable.alacritty
    nix-prefetch-scripts
    nix-serve
    nix-zsh-completions
    notify-osd
    openttd
    owncloudclient
    oxygen
    patchelf
    perkeep
    pgcli
    plan9port
    playerctl
    procps
    python2nix
    qalculate-gtk
    qt-recordmydesktop
    ranger
    rebar3
    remarshal
    ripgrep
    rofi
    rofi-menugen
    rofi-pass
    rtorrent
    (nixpkgs-seafile.seafile-client)
    silver-searcher
    simplescreenrecorder
    skypeforlinux
    sloccount
    slock
    sox
    spotify
    sqlitebrowser
    st
    teamspeak_client
    tectonic
    termite
    # terraform-full
    # terraform-inventory
    # terraform-landscape
    # terragrunt
    # texlive.combined.scheme-medium
    thunderbird-bin
    wakatime
    wireshark-qt
    xarchiver
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-dropbox-plugin
    xfce.thunar_volman
    xfce.xfce4icontheme
    xfontsel
    xfsprogs
    xkblayout-state
    xmlindent
    youtube-dl
    yq
  ];
}
