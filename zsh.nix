{ pkgs, ... }:
{
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
      v = "vim";
      c = "clear";
      open = "xdg-open";
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

      unset RPS1
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
      ];
    };
  };
}
