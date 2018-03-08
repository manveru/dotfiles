{ pkgs, ... }:
{
  programs.git = {
    enable = true;

    ignores = [
      ".*.~undo-tree~"
      "*.~undo-tree~"
      ".envrc"
      "result"
      ".shell.drv"
      "#*#"
      ".#*"
    ];

    signing = {
      key = "068A7479";
    };

    extraConfig = {
      core = {
        pager = "less -R";
        autocrlf = "input";
        editor = "nvim";
        excludesfile = /home/manveru/.gitignore_global;
      };
      user = {
        name = "Michael Fellinger";
        email = "michael.fellinger@xing.com";
      };
      credential = {
        helper = "netrc";
      };
      status = {
        showUntrackedFiles = "all";
      };
      transfer = {
        fsckobjects = true;
      };
      push = {
        default = "current";
      };
      pull = {
        default = "current";
      };
      color = {
        ui = true;
      };
      merge = {
        ff = "only";
        conflictstyle = "diff3";
        summary = true;
        tool = "vimdiff";
      };
      branch = {
        autoSetupMerge = "always";
      };
      instaweb = {
        port = 1234;
      };
      ui = {
        color = true;
      };
      rebase = {
        stat = true;
        autoSquash = true;
        autostash = true;
      };
      gpg = {
        program = "gpg2";
      };
      diff = {
        tool = "icdiff";
      };
      difftool = {
        prompt = false;
      };
      "difftool \"icdiff\"" = {
        cmd = "${pkgs.icdiff}/bin/icdiff --line-numbers $LOCAL $REMOTE";
      };
      stash = {
        showPatch = true;
      };
    };
    aliases = {
      st = "status";
      di = "diff";
      ci = "commit";
      br = "branch";
      sta = "stash";
      co = "checkout";
      cd = "checkout";
      cb = "checkout -b";
      rbom = "rebase -i origin/master";
      rbc = "rebase --continue";
      amend = "commit --amend";
      stat = "status -s";
      unadd = "rm --cached";
      dlog = "log --decorate";
      glog = "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'";
      slog = ''log --pretty=format:"%C(auto,yellow)%h%C(auto)%d\\ %C(auto,reset)%s\\ \\ [%C(auto,blue)%cn%C(auto,reset),\\ %C(auto,cyan)%ar%C(auto,reset)]"'';
      addprx = ''
        !f() { b=`git symbolic-ref -q --short HEAD` && \
        git fetch origin pull/$1/head:pr/$1 && \
        git fetch -f origin pull/$1/merge:PR_MERGE_HEAD && \
        git rebase --onto $b PR_MERGE_HEAD^ pr/$1 && \
        git branch -D PR_MERGE_HEAD && \
        git checkout $b && echo && \
        git diff --stat $b..pr/$1 && echo && \
        git slog $b..pr/$1; }; f
      '';
    };
  };
}
