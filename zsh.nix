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
      unalias 9
      autoload -U down-line-or-beginning-search
      autoload -U up-line-or-beginning-search
      bindkey '^[[B' down-line-or-beginning-search
      bindkey '^[[A' up-line-or-beginning-search
      zle -N down-line-or-beginning-search
      zle -N up-line-or-beginning-search
      bindkey '^[[7~' beginning-of-line
      bindkey '^[[8~' end-of-line

      eval "$(${pkgs.direnv}/bin/direnv hook zsh)"
      eval "$(keychain --eval --quiet --noask --systemd ssh id_ed25519)"

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
    '';
    oh-my-zsh = {
      enable = true;
      theme = "flazz";
      plugins = [
        "docker"
        "encode64"
        "git"
        "git-extras"
        "man"
        "nmap"
        "nyan"
        "ssh-agent"
        "sudo"
        "tig"
        "vi-mode"
        "yarn"
        "zsh-navigation-tools"
        "systemd"
        "tmux"
      ];
    };
  };
}
