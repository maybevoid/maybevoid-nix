{ nixpkgs
, source
, haskellPackages
}:
let
  inherit (nixpkgs) pkgs;
  util = import ./util.nix;

  haskellLib = pkgs.haskell.lib;

  haskellPackages-2 = haskellPackages.override (old: {
    overrides = pkgs.lib.composeExtensions
      (old.overrides or (_: _: {}))
      (self: super: {

        quasi-params = super.callCabal2nix
          "quasi-params"
          (source.quasi-params + /quasi-params)
          {}
        ;

        quasi-params-multi = super.callCabal2nix
          "quasi-params-multi"
          (source.quasi-params + /quasi-params-multi)
          {}
        ;

        casimir = haskellLib.doBenchmark
          ( super.callCabal2nix
              "casimir"
              source.casimir
              {}
          )
        ;

        dabble = super.callCabal2nix
          "dabble"
          source.dabble
          {}
        ;
      });
  });

in
haskellPackages-2
