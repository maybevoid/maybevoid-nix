{ nixpkgs }:
let
  inherit (nixpkgs) pkgs stdenv;

  haskellLib = pkgs.haskell.lib;
  util = import ../util.nix;

  haskellPackages-1 = pkgs.haskell.packages.ghc8101;

  haskellPackages = haskellPackages-1.override (old: {
    overrides = pkgs.lib.composeExtensions
      (old.overrides or (_: _: {}))
      (self: super: {
      });
    });
in
haskellPackages
