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
  haskellPackages.ghcide
  haskellPackages.cabal-install
]
