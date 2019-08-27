{ pkgs, ... }: {
  xsession.windowManager.i3.extraConfig = ''
    workspace  1 output DP-0
    workspace  2 output DP-0
    workspace  3 output DP-0
    workspace  4 output DP-3
    workspace  5 output DP-3
    workspace  6 output DP-3
    workspace  7 output DP-3
    workspace  8 output HDMI-0
    workspace  9 output HDMI-0
    workspace 10 output HDMI-0
  '';

  services.polybar.config."module/filesystem".mount-1 = "/big";
  services.polybar.config."module/eth".interface = "enp3s0";
  services.polybar.config."module/cpu".format = "<label> <ramp-coreload>";
  services.polybar.config."module/memory".format = "<label> <bar-used>";
  services.polybar.script = with pkgs; ''
    set -ex

    export PATH="$PATH:${busybox}/bin:${xlibs.xrandr}/bin:${i3-gaps}/bin"

    echo $DBUS_SESSION_BUS_ADDRESS
    ${libudev}/bin/systemctl --user import-environment DBUS_SESSION_BUS_ADDRESS
    echo $DBUS_SESSION_BUS_ADDRESS

    main=$(xrandr | grep ' connected primary ' | cut -d' ' -f1)
    side=$(xrandr | grep ' connected ' | grep -v ' connected primary ' | cut -d' ' -f1)

    for s in $side; do
      MONITOR="$s" polybar secondary &
    done

    MONITOR="$main" polybar main &
  '';

  services.random-background = {
    enable = true;
    display = "fill";
    imageDirectory = "%h/.config/nixpkgs/pkgs/backgrounds/images";
    interval = "30m";
    enableXinerama = false;
  };

  services.compton = {
    enable = true;
    # vSync = "opengl";
    fade = true;
    fadeDelta = 5;
    inactiveOpacity = "0.9";
    menuOpacity = "0.9";
    opacityRule = [
      # "99:name *= 'Firefox'"
      # "99:class_i ~= 'rxvt\$'"
      "0:_NET_WM_STATE@:32a *= '_NET_WM_STATE_HIDDEN'"
    ];

    shadow = true;

    shadowExclude = [
      "class_g ?= 'slingshot-launcher'"
      "class_g ?= 'plank'"
      "class_g ?= 'Notify-osd'"
      "class_g ?= 'gnome-pie-868'"
      "name = 'cpt_frame_window'" # zoom desktop share
      "name = 'as_toolbar'"       # zoom desktop share
      "name = 'Polybar tray window'"
    ];

    extraOptions = if false then ''
      shadow = true;           # Enabled client-side shadows on windows.
      no-dock-shadow = true;   # Avoid drawing shadows on dock/panel windows.
      no-dnd-shadow = true;    # Don't draw shadows on DND windows.
      clear-shadow = false;    # Zero the part of the shadow's mask behind the
                               # window. Fix some weirdness with ARGB windows.
      shadow-radius = 5;      # The blur radius for shadows. (default 12)
      shadow-offset-x = -5;   # The left offset for shadows. (default -15)
      shadow-offset-y = -5;   # The top offset for shadows. (default -15)
      shadow-opacity = 0.75;    # The translucency for shadows. (default .75)
      shadow-exclude = [
        "class_g ?= 'slingshot-launcher'",
        "class_g ?= 'plank'",
        "class_g ?= 'Notify-osd'",
        "class_g ?= 'gnome-pie-868'",
        "name = 'cpt_frame_window'", # zoom desktop share
        "name = 'as_toolbar'",       # zoom desktop share
        "name = 'Polybar tray window'"
      ]
      # shadown-exclude-reg = "x50+0-0";

      # Blur background of transparent windows.
      # Bad performance with X Render backend.
      # GLX backend is preferred.
      blur-background = false;

      # Blur background of opaque windows with transparent frames as well.
      blur-background-frame = false;

      # Do not let blur radius adjust based on window opacity.
      blur-background-fixed = false;

      blur-kern = "15,15,0.140858,0.182684,0.227638,0.272532,0.313486,0.346456,0.367879,0.375311,0.367879,0.346456,0.313486,0.272532,0.227638,0.182684,0.140858,0.182684,0.236928,0.295230,0.353455,0.406570,0.449329,0.477114,0.486752,0.477114,0.449329,0.406570,0.353455,0.295230,0.236928,0.182684,0.227638,0.295230,0.367879,0.440432,0.506617,0.559898,0.594521,0.606531,0.594521,0.559898,0.506617,0.440432,0.367879,0.295230,0.227638,0.272532,0.353455,0.440432,0.527292,0.606531,0.670320,0.711770,0.726149,0.711770,0.670320,0.606531,0.527292,0.440432,0.353455,0.272532,0.313486,0.406570,0.506617,0.606531,0.697676,0.771052,0.818731,0.835270,0.818731,0.771052,0.697676,0.606531,0.506617,0.406570,0.313486,0.346456,0.449329,0.559898,0.670320,0.771052,0.852144,0.904837,0.923116,0.904837,0.852144,0.771052,0.670320,0.559898,0.449329,0.346456,0.367879,0.477114,0.594521,0.711770,0.818731,0.904837,0.960789,0.980199,0.960789,0.904837,0.818731,0.711770,0.594521,0.477114,0.367879,0.375311,0.486752,0.606531,0.726149,0.835270,0.923116,0.980199,0.980199,0.923116,0.835270,0.726149,0.606531,0.486752,0.375311,0.367879,0.477114,0.594521,0.711770,0.818731,0.904837,0.960789,0.980199,0.960789,0.904837,0.818731,0.711770,0.594521,0.477114,0.367879,0.346456,0.449329,0.559898,0.670320,0.771052,0.852144,0.904837,0.923116,0.904837,0.852144,0.771052,0.670320,0.559898,0.449329,0.346456,0.313486,0.406570,0.506617,0.606531,0.697676,0.771052,0.818731,0.835270,0.818731,0.771052,0.697676,0.606531,0.506617,0.406570,0.313486,0.272532,0.353455,0.440432,0.527292,0.606531,0.670320,0.711770,0.726149,0.711770,0.670320,0.606531,0.527292,0.440432,0.353455,0.272532,0.227638,0.295230,0.367879,0.440432,0.506617,0.559898,0.594521,0.606531,0.594521,0.559898,0.506617,0.440432,0.367879,0.295230,0.227638,0.182684,0.236928,0.295230,0.353455,0.406570,0.449329,0.477114,0.486752,0.477114,0.449329,0.406570,0.353455,0.295230,0.236928,0.182684,0.140858,0.182684,0.227638,0.272532,0.313486,0.346456,0.367879,0.375311,0.367879,0.346456,0.313486,0.272532,0.227638,0.182684,0.140858,"

      # Exclude conditions for background blur. "window_type = 'dock'", "n:s:dzen"
      blur-background-exclude = [ "window_type = 'desktop'", "class_g ?= 'slingshot-launcher'", "class_g ?= 'plank'", "class_g ?= 'Notify-osd'", "class_g ?= 'gnome-pie-868'" ];
    '' else "";
  };
}
