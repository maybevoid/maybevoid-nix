{  nixpkgs }:
let
  inherit (nixpkgs) pkgs;
  haskellLib = pkgs.haskell.lib;

  util = import ../util.nix;

  haskellPackages-1 = nixpkgs.pkgs.haskell.packages.ghc865;

  haskellPackages = haskellPackages-1.override (old: {
    overrides = pkgs.lib.composeExtensions
      (old.overrides or (_: _: {}))
      (self: super: {
        time-compat = haskellLib.appendPatch
          ( util.callGitPackage super
              "time-compat"
              "https://github.com/phadej/time-compat.git"
              "89ef24ecf2b9a7f30bf91ec7cc82edc71c7b29d0"
          )
          ../patches/time-compat.patch
        ;
      });
    });
in
haskellPackages
