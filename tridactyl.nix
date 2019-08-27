{ pkgs, ... }:
let
  inherit (builtins) readFile fetchTarball replaceStrings;
  inherit (pkgs) writeScript;
  inherit (pkgs.lib) concatStringsSep splitString;

  # manifest_loc="https://raw.githubusercontent.com/tridactyl/tridactyl/${1:-1.15.0}/native/tridactyl.json"
  # native_loc="https://raw.githubusercontent.com/tridactyl/tridactyl/${1:-1.15.0}/native/native_main.py"

  tridactyl = fetchTarball {
    url = https://github.com/tridactyl/tridactyl/archive/1.15.0.tar.gz;
  };

  native_main = writeScript "native_main.py" ''
    #!${pkgs.python3}/bin/python3
    ${readFile "${tridactyl}/native/native_main.py"}
  '';

  native-json = writeScript "tridactyl.json"
    (concatStringsSep "${native_main}"
      (splitString "REPLACE_ME_WITH_SED"
        (readFile "${tridactyl}/native/tridactyl.json")));
in
{
  # home.file.".local/share/native_main.py".source = native-main;
  home.file.".mozilla/native-messaging-hosts/tridactyl.json".source = native-json;
}
