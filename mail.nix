{ pkgs, ... }: {
  accounts.email.accounts = {
    "manveru@manveru.dev" = {
      primary = true;
      realName = "Michael Fellinger";
      address = "manveru@manveru.dev";
      userName = "manveru@manveru.dev";

      smtp = {
        host = "mail.gandi.net";
        port = 587;
      };

      imap = {
        host = "mail.gandi.net";
        tls.enable = true;
      };

      notmuch.enable = true;

      mbsync = {
        enable = true;
        create = "maildir";
        expunge = "none";
        flatten = ".";
        patterns = [ "*" "!.*" ];
      };

      imapnotify = {
        enable = true;
        boxes = [ "Inbox" ];

        onNotify = "true";
        onNotifyPost.mail = ''
          ${pkgs.isync}/bin/mbsync --all && \
          ${pkgs.notmuch}/bin/notmuch new && \
          ${pkgs.libnotify}/bin/notify-send 'New mail arrived'
        '';
      };
    };
  };

  programs = {
    alot.enable = true;
    mbsync.enable = true;

    notmuch = {
      enable = true;
      # hooks.preNew = "${pkgs.isync}/bin/mbsync --all";
    };

    astroid = {
      enable = true;
      extraConfig = {
        startup = {
          queries = {
            "inbox" = "tag:inbox";
            "unread" = "tag:unread";
            "flagged" = "tag:flagged";
          };
        };
      };
    };
  };

  services = {
    imapnotify = { enable = true; };
    mbsync = {
      enable = true;
      verbose = true;
      postExec = "${pkgs.notmuch}/bin/notmuch new";
    };
  };
}
