{ lib, stdenv, fetchFromGitHub, pkgs, ... }:
stdenv.mkDerivation {
  name = "libfolding";
  version = "1.1";
  nativeBuildInputs = [ pkgs.armadillo ];
  src = fetchFromGitHub {
    owner = "asiffer";
    repo = "libfolding";
    rev = "128315e7c6051651be41bf5ddc9799dab7380369";
    sha256 = "sha256-6okxPF6LSB1gyGyZDwM1crt7fdANNk7AdnZCGPprUXw=";
  };
  installPhase = ''
    mkdir -p $out
    make install INSTALL_LIB_DIR=$out/lib INSTALL_HEAD_DIR=$out/include
  '';
}
