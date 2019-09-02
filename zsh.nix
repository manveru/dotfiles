{ pkgs, ... }: {
  # .zshenv
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;

    history = {
      ignoreDups = true;
      save = 1000000;
      size = 1000000;
    };

    shellAliases = {
      e = "emacsclient -c --socket-name /tmp/emacs1000/server";
      v = "emacsclient -nw -c --socket-name /tmp/emacs1000/server";
      # v = "vim";
      c = "clear";
      p = "pijul";
      open = "xdg-open";
      vpn-on =
        "ENABLE_VPN=true sudo --preserve-env ENABLE_VPN nixos-rebuild switch";
      vpn-off = "sudo nixos-rebuild switch";
      icat = "kitty +kitten icat";
    };

    initExtra = ''
      # Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
      export KEYTIMEOUT=1

      bindkey '^[[7~' beginning-of-line
      bindkey '^[[8~' end-of-line

      unalias 9

      autoload -U down-line-or-beginning-search
      autoload -U up-line-or-beginning-search

      bindkey "^[OA" up-line-or-beginning-search
      bindkey "^[OB" down-line-or-beginning-search
      zle -N down-line-or-beginning-search
      zle -N up-line-or-beginning-search

      bindkey -M vicmd "^V" edit-command-line
      bindkey -M vicmd "v" visual-mode
      bindkey -M vicmd "V" visual-line-mode

      export PATH="$HOME/go/bin:$PATH"
      # eval "$(direnv hook zsh)"
      eval "$(${pkgs.keychain}/bin/keychain --eval --quiet --noask --systemd ssh id_ed25519)"

      nixify() {
        if [ ! -e shell.nix ]; then
          cp ${./shell.template.nix} shell.nix
          ''${EDITOR:-vim} shell.nix
        fi

        if [ ! -e ./.envrc ]; then
          echo "use nix" > .envrc
          direnv allow
        fi
      }

      ${pkgs.kitty}/bin/kitty + complete setup zsh | source /dev/stdin

      fpath+=~/github/input-output-hk/iohk-ops/
      compinit

      unset RPS1

      eval "$(starship init zsh)"
    '';

    oh-my-zsh = {
      enable = true;
      theme = "ys";
      plugins = [
        "aws"
        "docker"
        "encode64"
        "git"
        "git-extras"
        "man"
        "nmap"
        "ssh-agent"
        "sudo"
        "systemd"
        "tig"
        "tmux"
        "vi-mode"
        "yarn"
        "zsh-navigation-tools"
        "mix"
        "pijul"
      ];
    };
  };
}
