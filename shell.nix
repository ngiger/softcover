# See https://nixos.wiki/wiki/Packaging/Ruby
# https://discourse.nixos.org/t/shell-nix-for-github-pages-development/2000/6
with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    ruby
    bundix
    git
    sqlite
    libpcap
    postgresql
    libxml2
    libxslt
    pkgconfig
    bundix
    gnumake
    nodejs
    phantomjs2
    ghostscript
    inkscape
    calibre
    imagemagick
    epubcheck
    python2
    curl
    texlive.combined.scheme-medium 
    openjdk8
  ];
  nativeBuildInputs = [
    bundler
  ];
}

# nix-shell
# bundle install      # generates Gemfile.lock
# bundix       
# nix-build -E '((import <nixpkgs> {}).callPackage (import ./default.nix) { })' --keep-failed
