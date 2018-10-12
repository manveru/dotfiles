{ ... }: {
  programs.termite = {
    enable = true;
    audibleBell = false;
    clickableUrl = true;
    cursorBlink = "off";
    dynamicTitle = true;
    filterUnmatchedUrls = true;
    font = "D2Coding for Powerline 12";
    scrollbackLines = 100000;
  };
}
