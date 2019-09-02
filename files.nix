{ pkgs, ... }: {
  home.file.".config/starship.toml".text = ''
    [nix_shell]
    use_name = false
  '';

  # home.file.".mozilla/firefox/nuc7kdrz.default/chrome/userChrome.css".text = ''

  #   /* Hide main tabs toolbar */
  #   #main-window[tabsintitlebar="true"]:not([extradragspace="true"]) #TabsToolbar {
  #     opacity: 0;
  #     pointer-events: none;
  #   }
  #   #main-window:not([tabsintitlebar="true"]) #TabsToolbar {
  #       visibility: collapse !important;
  #   }

  #   /* Hide sidebar header, when using Tree Style Tab. */
  #   #sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"] #sidebar-header {
  #       visibility: collapse;
  #   }
  # '';

  home.file.".config/ranger/rc.conf".text = ''
    set preview_images true
    ext svg = feh --conversion-timeout 2 -- "$@"
  '';

  home.file.".config/Dharkael/flameshot.ini".text = ''
    [General]
    disabledTrayIcon=false
    drawColor=@Variant(\0\0\0\x43\x1\xff\xff\0\0\0\0\xff\xff\0\0)
    drawThickness=0
    filenamePattern=%F_%T_shot
  '';

  home.file.".irbrc".text = ''
    require "irb/completion"

    IRB.conf[:SAVE_HISTORY] = 100
    IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

    IRB.conf[:AUTO_INDENT] = true
    IRB.conf[:PROMPT_MODE] = :SIMPLE
  '';

  home.file.".gitignore".text = ''
    .*.~undo-tree~
    *.~undo-tree~
    .envrc
    result
    .shell.drv
    .direnv/
    #*#
    .#*
  '';

  home.file.".config/pgcli/config".text = ''
    [main]
    wider_completion_menu = True
    keyword_casing = upper
    table_format = fancy_grid
    vi = True
    less_chatty = True

    [named queries]
    table_sizes = ''''SELECT *, pg_size_pretty(total_bytes) AS total
        , pg_size_pretty(index_bytes) AS INDEX
        , pg_size_pretty(toast_bytes) AS toast
        , pg_size_pretty(table_bytes) AS TABLE
      FROM (
      SELECT *, total_bytes-index_bytes-COALESCE(toast_bytes,0) AS table_bytes FROM (
          SELECT c.oid,nspname AS table_schema, relname AS TABLE_NAME
                  , c.reltuples AS row_estimate
                  , pg_total_relation_size(c.oid) AS total_bytes
                  , pg_indexes_size(c.oid) AS index_bytes
                  , pg_total_relation_size(reltoastrelid) AS toast_bytes
              FROM pg_class c
              LEFT JOIN pg_namespace n ON n.oid = c.relnamespace
              WHERE relkind = 'r' ORDER BY total_bytes DESC
      ) a
    ) a''''

  '';

  home.file.".agignore".text = ''
    \#*\#
    \#*
  '';

  home.file.".direnvrc".text = ''
    use_nix() {
      eval "$(lorri direnv)"
    }
  '';
}
