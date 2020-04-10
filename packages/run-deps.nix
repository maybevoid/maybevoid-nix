{ nixpkgs
, haskellPackages
}:
let
  inherit (nixpkgs) pkgs;
in
[
  pkgs.git
  pkgs.glibcLocales
  haskellPackages.ghcid
  haskellPackages.cabal-install
]
