{ nixpkgs ? import ./nixpkgs.nix
, useLocal ? false
, sourceOverride ? {}
}:
let
  haskellPackages = import ../haskell-packages/8.10.nix
    { inherit nixpkgs; };
in
import ./release.nix {
  inherit nixpkgs useLocal sourceOverride haskellPackages;
}
