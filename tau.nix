{ pkgs, ... }:
{
  xsession.windowManager.i3.extraConfig = ''
    workspace  1 output HDMI2
    workspace  2 output HDMI2
    workspace  3 output HDMI2
    workspace  4 output HDMI2
    workspace  5 output HDMI2
    workspace  6 output eDP1
    workspace  7 output eDP1
    workspace  8 output eDP1
    workspace  9 output eDP1
    workspace 10 output eDP1
  '';

  # services.network-manager-applet.enable = true;

  services.polybar.config."module/filesystem".mount-1 = "/big";
  services.polybar.config."module/wlan".interface = "wlp2s0";
  services.polybar.config."module/eth".interface = "enp1s0f1";
  services.polybar.config."module/memory".format = "<label>";
  services.polybar.config."module/cpu".format = "<label>";
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

    MONITOR="$main" polybar laptop &
  '';

  services.screen-locker = {
    enable = true;
    inactiveInterval = 3;
    lockCmd = "${pkgs.slock}/bin/slock";
  };
}
