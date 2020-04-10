{  nixpkgs }:
let
  haskellPackages = nixpkgs.pkgs.haskell.packages.ghc883;
in
haskellPackages
