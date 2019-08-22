{ mkDerivation, base, stdenv, yesod }:
mkDerivation {
  pname = "nixops-example";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base yesod ];
  description = "Nothing is more fun than a festlig hest";
  license = stdenv.lib.licenses.gpl3;
}
