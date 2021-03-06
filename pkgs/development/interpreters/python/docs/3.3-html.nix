# This file was generated and will be overwritten by ./generate.sh

{ stdenv, fetchurl, lib }:

stdenv.mkDerivation rec {
  name = "python33-docs-html-3.3.0";
  src = fetchurl {
    url = http://docs.python.org/ftp/python/doc/3.3.0/python-3.3.0-docs-html.tar.bz2;
    sha256 = "0vv24b9qi7gznv687ik0pa2w1rq9grqivy44znvj2ysjfg7mc2c1";
  };
  installPhase = ''
    mkdir -p $out/share/doc/python33
    cp -R ./ $out/share/doc/python33/html
  '';
  meta = {
    maintainers = [ lib.maintainers.chaoflow ];
  };
}
