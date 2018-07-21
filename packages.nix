{ pkgs, ... }: {
  home.packages = let
    go             = pkgs.go_1_10;
    buildGoPackage = pkgs.buildGoPackage.override { inherit go; };
    gotools        = pkgs.gotools.override { inherit go buildGoPackage; };
    gocode         = pkgs.gocode.override { inherit buildGoPackage; };
    dep            = pkgs.dep.override { inherit buildGoPackage; };
    godef          = pkgs.godef.override { inherit buildGoPackage; };
  in with pkgs; [
    # calamares-3.1.10
    # gotools
    # graphviz # conflicts with patchwork
    afl
    anki
    apacheHttpd
    aria2
    aspell
    audio-recorder
    awscli
    bundix
    cdrtools   # CD/DVD/BluRay command line recording software
    cheat      # allows you to create and view interactive cheatsheets on the command-line
    chromium
    cmatrix
    compton
    cool-retro-term
    cpuminer-multi
    ctags
    davmail
    dep
    dhall      # A configuration language guaranteed to terminate
    dhall-bash # Compile Dhall to Bash
    dhall-json # Compile Dhall to JSON or YAML
    dhall-nix  # Dhall to Nix compiler
    dhall-text # Template text using Dhall
    dhall.prelude
    discord
    dosbox
    duff
    elixir
    entr
    erlang
    evince
    exiv2
    ffmpeg
    fzf
    fzy
    gimp
    gist
    git-hub
    git-lfs
    gitAndTools.git-crypt
    gitAndTools.git-extras
    gitAndTools.hub
    glxinfo
    gnome3.dconf
    gnome3.gcr
    gnome3.seahorse
    gnupg
    go
    gocode
    godef
    google-chrome
    gparted
    gtypist
    gucharmap
    hex2nix
    hfsprogs
    hunspell
    hunspellDicts.en-us
    i3lock-pixeled
    i3lock-color
    i3lock-fancy
    icdiff
    inkscape
    jdk
    jitsi
    kbfs
    keepassxc
    keybase
    keybase-gui
    keychain
    keymon
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
    mkpasswd
    networkmanagerapplet
    nix-prefetch-scripts
    nix-repl
    nix-serve
    nix-zsh-completions
    nixUnstable
    notify-osd
    openttd
    owncloudclient
    patchelf
    pgcli
    plan9port
    playerctl
    procps
    python2nix
    qt-recordmydesktop
    ranger
    rebar3
    remarshal
    ripgrep
    rofi
    rofi-menugen
    rofi-pass
    rtorrent
    ruby_2_5
    seafile-client
    silver-searcher
    simplescreenrecorder
    skypeforlinux
    sloccount
    slock
    tectonic
    texlive.combined.scheme-medium
    sox
    spotify
    sqlitebrowser
    teamspeak_client
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
  ];
}
