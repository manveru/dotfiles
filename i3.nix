{ pkgs, ... }: {
  xsession = {
    enable = true;

    windowManager = {
      i3 = {
        enable = true;

        extraConfig = ''
          workspace_auto_back_and_forth yes
          popup_during_fullscreen smart
        '';

        config = {
          modes = {
            resize = {
              Left  = "resize shrink width 10 px or 10 ppt";
              h     = "resize shrink width 10 px or 10 ppt";
              Right = "resize grow width 10 px or 10 ppt";
              l     = "resize grow width 10 px or 10 ppt";
              Up    = "resize shrink height 10 px or 10 ppt";
              k     = "resize shrink height 10 px or 10 ppt";
              Down  = "resize grow height 10 px or 10 ppt";
              j     = "resize grow height 10 px or 10 ppt";

              Escape = "mode default";
              Return = "mode default";
            };
          };

          keybindings = let mod = "Mod4"; in with pkgs; {
            XF86AudioPause         = "exec ${playerctl}/bin/playerctl pause";
            XF86AudioNext          = "exec ${playerctl}/bin/playerctl next";
            XF86AudioPrev          = "exec ${playerctl}/bin/playerctl previous";
            XF86AudioLowerVolume   = "exec ${pulseaudioFull}/bin/pactl set-sink-volume 0 -5%";
            XF86AudioRaiseVolume   = "exec ${pulseaudioFull}/bin/pactl set-sink-volume 0 +5%";
            XF86AudioMute          = "exec ${pulseaudioFull}/bin/pactl set-sink-mute 0 toggle";

            "${mod}+Return"        = "exec ${kitty}/bin/kitty";
            "${mod}+Shift+less"    = "exec xbacklight -dec 33%";
            "${mod}+Shift+greater" = "exec xbacklight -inc 33%";
            "Muhenkan"             = "exec \"if [[ $(xkblayout-state print %c) -eq 0 ]]; then xkblayout-state set 1; else xkblayout-state set 0; fi\"";
            "Print"                = "exec scrot --focused";
            "${mod}+period"        = "exec xkblayout-state set 1";

            "${mod}+h" = "focus left";
            "${mod}+j" = "focus down";
            "${mod}+k" = "focus up";
            "${mod}+l" = "focus right";

            "${mod}+Shift+h" = "move left";
            "${mod}+Shift+j" = "move down";
            "${mod}+Shift+k" = "move up";
            "${mod}+Shift+l" = "move right";

            "${mod}+y" = "split h";
            "${mod}+u" = "split v";
            "${mod}+f" = "fullscreen toggle";
            "${mod}+Shift+space" = "floating toggle";
            "${mod}+Shift+c" = "kill";
            "${mod}+Shift+q" = "exec i3-nagbar -t warning -m 'Do you want to exit i3?' -b 'Yes' 'i3-msg exit'";
            "${mod}+Shift+e" = "reload";
            "${mod}+Shift+r" = "restart";

            "${mod}+d"       = "exec ${rofi}/bin/rofi -show run";
            "${mod}+Tab"     = "exec ${rofi}/bin/rofi -show window";
            "${mod}+Shift+d" = "exec i3-dmenu-desktop";
            "${mod}+Shift+p" = "exec ${i3lock-fancy}/bin/i3lock-fancy";

            "${mod}+s" = "layout stacking";
            "${mod}+w" = "layout tabbed";
            "${mod}+e" = "layout toggle split";
            "${mod}+r" = "mode resize";

            "${mod}+1" = "workspace 1";
            "${mod}+2" = "workspace 2";
            "${mod}+3" = "workspace 3";
            "${mod}+4" = "workspace 4";
            "${mod}+5" = "workspace 5";
            "${mod}+6" = "workspace 6";
            "${mod}+7" = "workspace 7";
            "${mod}+8" = "workspace 8";
            "${mod}+9" = "workspace 9";
            "${mod}+0" = "workspace 10";

            "${mod}+Shift+1" = "move container to workspace 1";
            "${mod}+Shift+2" = "move container to workspace 2";
            "${mod}+Shift+3" = "move container to workspace 3";
            "${mod}+Shift+4" = "move container to workspace 4";
            "${mod}+Shift+5" = "move container to workspace 5";
            "${mod}+Shift+6" = "move container to workspace 6";
            "${mod}+Shift+7" = "move container to workspace 7";
            "${mod}+Shift+8" = "move container to workspace 8";
            "${mod}+Shift+9" = "move container to workspace 9";
            "${mod}+Shift+0" = "move container to workspace 10";
          };

          startup = [
            {
              command = "systemctl --user restart polybar";
              always = true;
              notification = false;
            }
            {
              command = "${pkgs.networkmanagerapplet}/bin/nm-applet";
              always = true;
            }
          ];

          bars = [];

          fonts = ["DejaVu Sans Mono 8"];

          gaps = {
            inner = 12;
            outer = 0;
            smartBorders = "on";
            smartGaps = true;
          };

          window = {
            hideEdgeBorders = "smart";
          };

          floating = {
            border = 1;
            modifier = "Mod4";
            criteria = [
              {title = "Steam - Update News";}
              {title="^GoUI$";}
              {class="^Jitsi$"; instance="^sun-awt-X11-XFramePeer$";}
              {class="^Jitsiium$"; instance="^sun-awt-X11-XFramePeer$";}
              {class="^Pidgin$";}
              {class="^anthillda$";}
              {title="^MPlayer$";}
              {title="Terminator Preferences";}
              {class="Xfce4-notifyd";}
              {class="Skype";}
              {class="Ekiga";}
              {class="^Wine$";}
              {title="^PlayOnLinux";}
              {class="^dota_linux";}
              {title="^Dotabuff minimap";}
              {title="^QEMU";}
              {title="^Jitsi Desktop Streamer is sharing your screen with meet\.jit\.si\.";}
            ];
          };
        };
      };
    };
  };
}
