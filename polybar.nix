{ pkgs, ... }:
let
  icons = {
    cpu = "";
    memory = "";
    date = "";
    microphone = "";
    microphone-muted = "";
    microphone-disconnected = "";
    wifi = "";
    up = "";
    down = "";
    ethernet = "";
    envelope = "";
  };

  nixpkgs-unstable = import (fetchTarball {
    url =
      "https://github.com/nixos/nixpkgs-channels/archive/nixos-unstable.tar.gz";
  }) { };
in {
  services = {
    polybar = {
      enable = true;

      package = nixpkgs-unstable.polybar.override {
        alsaSupport = true;
        githubSupport = true;
        mpdSupport = true;
        pulseSupport = true;
        i3GapsSupport = true;
      };

      config = let
        background = "#99000000";
        background-alt = "#99000000";

        foreground = "#ffdddddd";
        foreground-alt = "#ffdddddd";

        primary = "#ff006633";
        secondary = "#ff003333";
        alert = "#ff330000";

        fonts = {
          font-0 = "D2Coding for Powerline:pixelsize=10;0";
          font-1 = "unifont:fontformat=truetype:size=10:antialias=false;0";
          font-2 = "Envy Code R:pixelsize=10;0";
          font-3 = "Font Awesome 5 Free:style=Regular:pixelsize=10;1";
          font-4 = "Font Awesome 5 Free:style=Solid:pixelsize=10;1";
          font-5 = "Font Awesome 5 Brands:pixelsize=10;1";
        };
      in {
        "bar/main" = fonts // {
          monitor = "\${env:MONITOR}";
          height = 22;
          radius = 0;
          fixed-center = true;
          bottom = true;

          background = background;
          foreground = foreground;

          line-size = 2;
          line-color = "#f00";

          border-size = 0;

          padding-left = 0;
          padding-right = 0;

          module-margin-left = 1;
          module-margin-right = 1;

          modules-left = "i3";
          modules-center = "xwindow";
          modules-right =
            "filesystem wlan eth memory cpu battery temperature headsetswitch date";

          tray-position = "right";
          tray-padding = 3;

          scroll-up = "i3wm-wsnext";
          scroll-down = "i3wm-wsprev";
        };

        "bar/secondary" = fonts // {
          "inherit" = "bar/main";
          monitor = "\${env:MONITOR}";
          width = "100%";
          bottom = true;

          modules-left = "i3";
          modules-center = "xwindow";
          modules-right = "spotify volume headsetswitch notmuch date";
          # modules-right = "volume headsetswitch date";
        };

        "bar/laptop" = fonts // {
          "inherit" = "bar/main";
          monitor = "\${env:MONITOR}";
          width = "100%";

          modules-left = "i3";
          modules-center = "xwindow";
          modules-right =
            "filesystem wlan eth memory cpu volume battery temperature date";
        };

        "settings" = {
          screenchange-reload = "true";
          pseudo-transparency = true;
        };

        "global/wm" = {
          margin-top = 2;
          margin-bottom = 2;
        };

        "module/xwindow" = {
          type = "internal/xwindow";
          label = "%title:0:30:...%";
        };

        "module/cpu" = {
          type = "internal/cpu";
          interval = 2;

          format-prefix-foreground = foreground-alt;
          format-underline = "#07ACFF";
          label = "%percentage:3%%";
          format-prefix = "${icons.cpu} ";

          ramp-coreload-0 = "▁";
          ramp-coreload-1 = "▂";
          ramp-coreload-2 = "▃";
          ramp-coreload-3 = "▄";
          ramp-coreload-4 = "▅";
          ramp-coreload-5 = "▆";
          ramp-coreload-6 = "▇";
          ramp-coreload-7 = "█";
        };

        "module/memory" = {
          type = "internal/memory";
          format-prefix = "${icons.memory} ";
          format-prefix-foreground = foreground-alt;
          format-underline = "#05D8E8";
          interval = 2;
          label-active-font = 4;
          label = "%gb_used%";

          # Only applies if <bar-used> is used
          bar-used-indicator = "▐";
          bar-used-width = 10;
          bar-used-foreground-0 = "#55aa55";
          bar-used-foreground-1 = "#557755";
          bar-used-foreground-2 = "#f5a70a";
          bar-used-foreground-3 = "#ff5555";
          bar-used-fill = "▐";
          bar-used-empty = "▐";
          bar-used-empty-foreground = "#444444";

          # Only applies if <ramp-used> is used
          ramp-used-0 = "▁";
          ramp-used-1 = "▂";
          ramp-used-2 = "▃";
          ramp-used-3 = "▄";
          ramp-used-4 = "▅";
          ramp-used-5 = "▆";
          ramp-used-6 = "▇";
          ramp-used-7 = "█";
        };

        "module/i3" = {
          type = "internal/i3";
          format = "<label-state> <label-mode>";
          index-sort = true;
          wrapping-scroll = false;

          # Only show workspaces on the same output as the bar
          pin-workspaces = true;

          label-mode-padding = 2;
          label-mode-foreground = "#000";
          label-mode-background = primary;

          # focused = "Active workspace on focused monitor";
          label-focused = "%index%";
          label-focused-background = primary;
          label-focused-padding = 2;

          # unfocused = "Inactive workspace on any monitor";
          label-unfocused = "%index%";
          label-unfocused-background = background;
          label-unfocused-padding = 2;

          # visible = "Active workspace on unfocused monitor";
          label-visible = "%index%";
          label-visible-background = secondary;
          label-visible-padding = 2;

          # urgent = "Workspace with urgency hint set";
          label-urgent = "%index%";
          label-urgent-background = alert;
          label-urgent-padding = 2;

          label-separator = "|";
          label-separator-padding = 2;
          label-separator-foreground = "#ffb52a";
        };

        "module/filesystem" = {
          type = "internal/fs";
          interval = 10;

          mount-0 = "/";

          format-mounted-underline = "#06E87A";
          label-mounted = "%mountpoint%: %free%";
        };

        "module/volume" = {
          type = "internal/volume";
          format-volume = "<label-volume> <bar-volume>";
          label-volume = "VOL";
          label-volume-foreground = foreground;

          format-muted-prefix = " ";
          format-muted-foreground = foreground-alt;
          label-muted = "sound muted";

          bar-volume-width = "10";
          bar-volume-foreground-0 = "#55aa55";
          bar-volume-foreground-1 = "#55aa55";
          bar-volume-foreground-2 = "#55aa55";
          bar-volume-foreground-3 = "#55aa55";
          bar-volume-foreground-4 = "#55aa55";
          bar-volume-foreground-5 = "#f5a70a";
          bar-volume-foreground-6 = "#ff5555";
          bar-volume-gradient = true;
          bar-volume-indicator = "|";
          bar-volume-indicator-font = "2";
          bar-volume-fill = "─";
          bar-volume-fill-font = "2";
          bar-volume-empty = "─";
          bar-volume-empty-font = "2";
          bar-volume-empty-foreground = foreground-alt;
        };

        "module/eth" = {
          type = "internal/network";
          interval = "3.0";

          format-connected-underline = "#06FFCC";
          format-disconnected-underline = "#06FFCC";
          format-connected-prefix-foreground = foreground-alt;
          label-connected =
            "${icons.ethernet} %ifname% (${icons.up} %upspeed:9% ${icons.down} %downspeed:9%)";

          # format-disconnected = "<label-disconnected>";
          # label-disconnected = "";
          # label-disconnected-foreground = foreground-alt;
        };

        "module/wlan" = {
          type = "internal/network";
          interval = "3.0";

          format-connected = "<ramp-signal> <label-connected>";
          label-connected =
            "%essid% ${icons.wifi} (${icons.up} %upspeed:9% ${icons.down} %downspeed:9%)";

          ramp-signal-0 = "▁";
          ramp-signal-1 = "▂";
          ramp-signal-2 = "▃";
          ramp-signal-3 = "▄";
          ramp-signal-4 = "▅";
          ramp-signal-5 = "▆";
          ramp-signal-6 = "▇";
          ramp-signal-7 = "█";
          ramp-signal-foreground = foreground-alt;
        };

        "module/date" = {
          type = "internal/date";
          interval = "5";

          date = "%a %b %d";
          date-alt = "%Y-%m-%d";

          time = "%H:%M";
          time-alt = "%H:%M";

          format-underline = "#2406E8";
          label = "${icons.date} %date% %time%";
        };

        "module/temperature" = {
          type = "internal/temperature";
          thermal-zone = "0";
          warn-temperature = "60";

          format-underline = "#0561E8";
          format = "<ramp> <label>";
          format-warn-underline = "#0561E8";
          format-warn = "<ramp> <label-warn>";

          label = "%temperature-c%";
          label-warn = "%temperature-c%";
          label-warn-foreground = secondary;

          ramp-0 = "";
          ramp-1 = "";
          ramp-2 = "";
          ramp-foreground = foreground-alt;
        };

        "module/xkeyboard" = {
          type = "internal/xkeyboard";
          blacklist-0 = "num lock";

          format-prefix = " ";
          format-prefix-foreground = foreground-alt;

          label-layout = "%layout%";

          label-indicator-padding = "2";
          label-indicator-margin = "1";
          label-indicator-background = secondary;
        };

        "module/xbacklight" = {
          type = "internal/xbacklight";

          format = "<label> <bar>";
          label = "BL";

          bar-width = "10";
          bar-indicator = "|";
          bar-indicator-foreground = "#ff";
          bar-indicator-font = "2";
          bar-fill = "─";
          bar-fill-font = "2";
          bar-fill-foreground = "#9f78e1";
          bar-empty = "─";
          bar-empty-font = "2";
          bar-empty-foreground = foreground-alt;
        };

        "module/backlight-acpi" = {
          "inherit" = "module/xbacklight";
          type = "internal/backlight";
          card = "intel_backlight";
        };

        "module/battery" = {
          type = "internal/battery";
          battery = "BAT0";
          adapter = "AC";
          full-at = "98";

          format-charging = "<animation-charging> <label-charging>";

          format-discharging = "<ramp-capacity> <label-discharging>";

          format-full-prefix = " ";
          format-full-prefix-foreground = foreground;

          ramp-capacity-0 = "";
          ramp-capacity-1 = "";
          ramp-capacity-2 = "";
          ramp-capacity-foreground = foreground;

          animation-charging-0 = "";
          animation-charging-1 = "";
          # animation-charging-2 = "";
          animation-charging-foreground = foreground;
          animation-charging-framerate = "750";
        };

        "module/powermenu" = {
          type = "custom/menu";

          format-spacing = "1";

          label-open = "";
          label-open-foreground = secondary;
          label-close = " cancel";
          label-close-foreground = secondary;
          label-separator = "|";
          label-separator-foreground = foreground-alt;

          menu-0-0 = "reboot";
          menu-0-0-exec = "menu-open-1";
          menu-0-1 = "power off";
          menu-0-1-exec = "menu-open-2";

          menu-1-0 = "cancel";
          menu-1-0-exec = "menu-open-0";
          menu-1-1 = "reboot";
          menu-1-1-exec = "systemctl reboot";

          menu-2-0 = "power off";
          menu-2-0-exec = "systemctl poweroff";
          menu-2-1 = "cancel";
          menu-2-1-exec = "menu-open-0";
        };

        "module/headsetswitch" = let
          pactl = "${pkgs.pulseaudioLight}/bin/pactl";
          grep = "${pkgs.gnugrep}/bin/grep";
          sed = "${pkgs.gnused}/bin/sed";
        in {
          type = "custom/script";
          format-underline = "#0628FF";
          label = "%output%";
          exec = __concatStringsSep " " [
            "${pactl} info"
            "| ${grep} 'Default Sink'"
            "| ${sed} 's/.*analog-stereo//'"
            "| ${sed} 's/.*analog-stereo//'"
            "| ${sed} 's/.*auto_null/${icons.microphone-disconnected}/'"
            "| ${sed} 's/.*hdmi-stereo-extra.*/HDMI/'"
            "| ${sed} 's/.*headset_head_unit/${icons.microphone}/'"
            "| ${sed} 's/.*a2dp_sink/${icons.microphone-muted}/'"
            "| ${sed} 's/.*hdmi-stereo/HDMI/'"
          ];

          tail = true;
          interval = 2;
          click-left =
            "${pactl} set-card-profile bluez_card.2C_41_A1_83_C7_98 a2dp_sink";
          click-right =
            "${pactl} set-card-profile bluez_card.2C_41_A1_83_C7_98 headset_head_unit";
        };

        "module/spotify" = let
          polybar-spotify =
            pkgs.callPackage /home/manveru/github/manveru/polybar-spotify { };
          # polybar-spotify = import (fetchGit {
          #   url = "https://github.com/manveru/polybar-spotify.git";
          #   ref = "0.1.1";
          # }) {};
        in {
          type = "custom/script";
          exec =
            "${polybar-spotify}/bin/polybar-spotify %xesam:artist% - %xesam:title%";
          tail = true;
          interval = 2;
          click-left =
            "dbus-send --session --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause";
        };

        "module/notmuch" = {
          type = "custom/script";
          exec =
            "echo -n '${icons.envelope} '; ${pkgs.notmuch}/bin/notmuch search tag:unread | wc -l";
          tail = true;
          interval = 10;
          click-left = "${pkgs.astroid}/bin/astroid";
        };
      };
    };
  };
}
