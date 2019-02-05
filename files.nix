{ ... }: {
  home.file.".config/Dharkael/flameshot.ini".text = ''
    [General]
    disabledTrayIcon=false
    drawColor=@Variant(\0\0\0\x43\x1\xff\xff\0\0\0\0\xff\xff\0\0)
    drawThickness=0
    filenamePattern=%F_%T_shot
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
    # Usage: use_nix [...]
    #
    # Load environment variables from `nix-shell`.
    # If you have a `default.nix` or `shell.nix` one of these will be used and
    # the derived environment will be stored at ./.direnv/env-<hash>
    # and symlink to it will be created at ./.direnv/default.
    # Dependencies are added to the GC roots, such that the environment remains persistent.
    #
    # Packages can also be specified directly via e.g `use nix -p ocaml`,
    # however those will not be added to the GC roots.
    #
    # The resulting environment is cached for better performance.
    #
    # To trigger switch to a different environment:
    # `rm -f .direnv/default`
    #
    # To derive a new environment:
    # `rm -rf .direnv/env-$(md5sum {shell,default}.nix 2> /dev/null | cut -c -32)`
    #
    # To remove cache:
    # `rm -f .direnv/dump-*`
    #
    # To remove all environments:
    # `rm -rf .direnv/env-*`
    #
    # To remove only old environments:
    # `find .direnv -name 'env-*' -and -not -name `readlink .direnv/default` -exec rm -rf {} +`

    use_nix() {
      set -e

      local shell="shell.nix"
      if [[ ! -f "''${shell}" ]]; then
        shell="default.nix"
      fi

      if [[ ! -f "''${shell}" ]]; then
        fail "use nix: shell.nix or default.nix not found in the folder"
      fi

      local dir="''${PWD}"/.direnv
      local default="''${dir}/default"
      if [[ ! -L "''${default}" ]] || [[ ! -d `readlink "''${default}"` ]]; then
        local wd="''${dir}/env-`md5sum "''${shell}" | cut -c -32`" # TODO: Hash also the nixpkgs version?
        mkdir -p "''${wd}"

        local drv="''${wd}/env.drv"
        if [[ ! -f "''${drv}" ]]; then
          log_status "use nix: deriving new environment"
          IN_NIX_SHELL=1 nix-instantiate --add-root "''${drv}" --indirect "''${shell}" > /dev/null
          nix-store -r `nix-store --query --references "''${drv}"` --add-root "''${wd}/dep" --indirect > /dev/null
        fi

        rm -f "''${default}"
        ln -s `basename "''${wd}"` "''${default}"
      fi

      local drv=`readlink -f "''${default}/env.drv"`
      local dump="''${dir}/dump-`md5sum ".envrc" | cut -c -32`-`md5sum ''${drv} | cut -c -32`"

      if [[ ! -f "''${dump}" ]] || [[ "~/.config/direnv/direnvrc" -nt "''${dump}" ]]; then
        log_status "use nix: updating cache"

        old=`find ''${dir} -name 'dump-*'`
        nix-shell "''${drv}" --show-trace "$@" --run 'direnv dump' > "''${dump}"
        rm -f ''${old}
      fi

      direnv_load cat "''${dump}"

      watch_file "''${default}"
      watch_file shell.nix
      if [[ ''${shell} == "default.nix" ]]; then
        watch_file default.nix
      fi
    }
  '';
}
