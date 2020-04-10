{ nixpkgs ? import ./nixpkgs.nix
, useLocal ? false
, sourceOverride ? {}
}:
let
  ghc86 = import ./8.6.nix { inherit nixpkgs useLocal sourceOverride; };
  ghc88 = import ./8.8.nix { inherit nixpkgs useLocal sourceOverride; };
  ghc810 = import ./8.10.nix { inherit nixpkgs useLocal sourceOverride; };
in
{ inherit ghc86 ghc88 ghc810; }
