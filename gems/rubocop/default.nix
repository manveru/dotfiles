{ lib, bundlerApp }:

bundlerApp {
  pname = "rubocop";
  gemdir = ./.;
  exes = [ "rubocop" ];

  meta = with lib; {
    description = "    Automatic Ruby code style checking tool
    Aims to enforce the community-driven Ruby Style Guide
";
    homepage = https://github.com/rubocop-hq/rubocop;
  };
}
