{ nixpkgs
, haskellPackages
}:
let
  inherit (nixpkgs) pkgs;
in
[
  pkgs.glibcLocales
  haskellPackages.ghcid
  haskellPackages.cabal-install
]
