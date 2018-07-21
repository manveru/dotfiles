{
  packageOverrides = pkgs: {
    nur = pkgs.callPackage (import (builtins.fetchTarball {
      url = "https://github.com/nix-community/NUR/archive/master.tar.gz";
    })) {};
  };
  allowUnfreee = true;
}
