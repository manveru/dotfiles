{ ... }: {
  xsession = {
    enable = true;

    profileExtra = ''
      systemctl --user import-environment QT_PLUGIN_PATH

      xset -b # turn bell off
      xset dpms 1000 2000 3000 # <Standby> <Suspend> <Off>
      xset r rate 150

      setroot --center ${./blackhole.jpg} --tint black

      case `hostname` in
        (xi)
          xrandr --output LVDS1 --off --below HDMI1 --output HDMI1 --mode 1920x1080
          setxkbmap -layout de -variant nodeadkeys
          ;;
        (chi)
          xrandr --output DFP10 --auto --left-of DFP11 --output DFP11 --auto
          setxkbmap -layout jp
          ;;
        (kappa)
          xrandr --output DP-0 --auto --output DP-3 --primary --auto --right-of DP-0 --output HDMI-0 --auto --right-of DP-3
          setroot --span ${./blackhole.jpg} --tint black
          xset s off # screensaver off
          ;;
        (tau)
          if [[ `xrandr | grep 'HDMI2 connected'` ]]; then
            xrandr --output eDP1 --auto --below HDMI2 --output HDMI2 --auto
          fi

          setxkbmap -layout en_US
          ;;
      esac

      # Realforce
      lsusb | grep 0853:0142 && \
        setxkbmap -layout jp -option japan:hztg_escape,caps:ctrl_modifier

      fcitx &
    '';
  };
}
