{ pkgs, ... }: {

  home.packages = with pkgs; [ kitty ];

  home.file.".config/kitty/kitty.conf".text = ''
    font_family      Fira Code
    bold_font        Fira Code Bold
    italic_font      Fira Code Italic
    bold_italic_font Fira Code Bold Italic

    font_size 11.0
    symbol_map U+E0A0-U+E0A2,U+E0B0-U+E0B3 PowerlineSymbols
    cursor_shape block
    cursor_blink_interval -1
    scrollback_lines 100000
    background_opacity 0.8
  '';
}
