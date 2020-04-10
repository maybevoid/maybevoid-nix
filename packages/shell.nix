{ nixpkgs
, name
, haskellPackages
}:
let
  inherit (nixpkgs) pkgs;

  run-deps = import ./run-deps.nix
    { inherit nixpkgs haskellPackages; };
in
haskellPackages.shellFor {
  name = "nix-shell";

  packages = ps: [ ps.${name} ];

  buildInputs = run-deps;
}
