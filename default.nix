with import <nixpkgs> {};

let
  my-texlive = with pkgs; texlive.combine {
    inherit (texlive) scheme-medium;
  };

in stdenv.mkDerivation rec {
  name = "all";
  src = ./.;

  buildInputs = with pkgs; [
    curl
    gnumake
    hugo
    my-texlive
  ];

  buildPhase = ''
    make clean
    make install-theme
    make latex
    make dirlists
    make hugo
    make cname
  '';

  installPhase = ''
    mv public $out
  '';
}
