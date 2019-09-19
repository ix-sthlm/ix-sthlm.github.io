with import <nixpkgs> {};

let
  my-theme = builtins.fetchTarball {
    url = "https://github.com/ix-sthlm/hyde-x/archive/master.tar.gz";
  };
  my-texlive = with pkgs; texlive.combine {
    inherit (texlive) scheme-basic
      # Needed on top of scheme-basic
      babel-english
      babel-swedish
      booktabs
      datetime2-english
      datetime2-swedish
      ec
      eurosym
      hyphen-english
      hyphen-swedish
      ulem

      # Needed on top of scheme-small
      cm-super

      # Needed on top of scheme-medium
      capt-of
      wrapfig

      # More deps for handling of indented paragrafs
      parskip
      etoolbox
    ;
  };

  # Tmpfix: Depend on a very specific version of hugo, otherwise startpage
  # doesn't render correctly. Using this we get hugo: hugo: 0.57.2
  # On 0.58.0 it seems to break.
  my-hugo = (import (builtins.fetchTarball {
    url = "https://github.com/nixos/nixpkgs/archive/e3a6b8f31fd781f58084d104863d62247afcdf8a.tar.gz";
  }) {}).hugo;

in stdenv.mkDerivation rec {
  name = "all";
  src = ./.;

  buildInputs = with pkgs; [
    gnumake
    my-hugo
    emacs26-nox
    nodePackages.svgo
    my-texlive
  ];

  patchPhase = ''
    patchShebangs .travis/make_document_dirlist.sh
  '';

  buildPhase = ''
    make clean

    # Install theme
    mkdir -p themes
    cp -r ${my-theme} themes/hyde-x

    make color-logos
    make documents2pdf
    make dirlists
    make hugo
    make replace-favicon
    make cname
  '';

  installPhase = ''
    cp -vr public/ $out
  '';
}
