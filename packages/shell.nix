{ nixpkgs
, name
, haskellPackages
}:
let
  inherit (nixpkgs) pkgs;

  run-deps = import ./run-deps.nix
    { inherit nixpkgs haskellPackages; };

  release = pkgs.haskell.lib.doBenchmark
    (pkgs.haskell.lib.doCheck
      (haskellPackages.${name}) );
in
pkgs.mkShell {
  name = "shell";
  LANG = "en_US.UTF-8";
  inputsFrom = [ release.env ];
  buildInputs = run-deps;
}
