{ pkgs, ... }: {
  home.packages = let
    go             = pkgs.go_1_11;
    buildGoPackage = pkgs.buildGoPackage.override { inherit go; };
    gotools        = pkgs.gotools.override { inherit go buildGoPackage; };
    gocode         = pkgs.gocode.override { inherit buildGoPackage; };
    dep            = pkgs.dep.override { inherit buildGoPackage; };
    godef          = pkgs.godef.override { inherit buildGoPackage; };
    nixpkgs-unstable = import <nixpkgs-unstable> { config = { allowUnfree = true; }; };
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
    belle-sip
    blink
    breeze-icons
    bundix
    # calamares-3.1.10
    calligra
    cdrtools   # CD/DVD/BluRay command line recording software
    cheat      # allows you to create and view interactive cheatsheets on the command-line
    chromium
    cmatrix
    compton
    cool-retro-term
    #cpuminer-multi
    ctags
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
    easyrsa
    ekiga
    elixir
    entr
    erlang
    evince
    exercism
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
    hipchat
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
    kbfs
    kdeApplications.dolphin
    kdeApplications.dolphin-plugins
    kdeApplications.kdegraphics-thumbnailers
    kdeApplications.kio-extras
    kdeApplications.print-manager
    kdeFrameworks.kemoticons
    kdeFrameworks.kiconthemes
    keepassxc
    keychain
    keymon
    khelpcenter
    konsole
    kubernetes
    libcaca
    libnotify
    libreoffice
    libxfs
    linkchecker
    linuxConsoleTools
    lnav
    lyx
    mc
    minecraft
    minikube
    mkpasswd
    mysql-workbench
    networkmanagerapplet
    nitrogen # A wallpaper browser and setter for X11
    seafile-client
    # nixpkgs-unstable.alacritty
    nixpkgs-unstable.zoom-us
    nix-prefetch-scripts
    nix-serve
    nix-zsh-completions
    nodejs-8_x
    notify-osd
    notify-osd
    openttd
    optipng
    owncloudclient
    oxygen
    parallel
    pass
    patchelf
    pavucontrol
    perkeep
    pgcli
    plan9port
    playerctl
    pmount
    procps
    pwgen
    python
    python2nix
    qalculate-gtk
    qemu
    qt-recordmydesktop
    ranger
    rebar3
    remarshal
    ripgrep
    rlwrap
    rofi
    rofi-menugen
    rofi-pass
    rtorrent
    ruby
    rxvt_unicode-with-plugins
    scrot
    setroot
    shellcheck
    silver-searcher
    simplescreenrecorder
    sipsak
    skypeforlinux
    sloccount
    slock
    sofia_sip
    sox
    spotify
    sqlitebrowser
    st
    svnfs
    teamspeak_client
    tectonic
    termite
    # terraform-full
    # terraform-inventory
    # terraform-landscape
    # terragrunt
    # texlive.combined.scheme-medium
    thunderbird-bin
    tmate
    vlc
    volumeicon
    wakatime
    wbox
    wireshark-qt
    wrk
    wxcam
    xarchiver
    xbrightness
    xclip
    xcwd
    xdg_utils
    xdotool
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-dropbox-plugin
    xfce.thunar_volman
    xfce.xfce4icontheme
    xfontsel
    xfsprogs
    xkblayout-state
    xmlindent
    xsel
    xtitle
    youtube-dl
    yq
  ];
}
