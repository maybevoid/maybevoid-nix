{ nixpkgs
, useLocal
, sourceOverride
, haskellPackages
}:
let
  makeShell = import ../packages/shell.nix;

  source = import ../source { inherit useLocal; } // sourceOverride;

  haskellPackages-2 = import ../packages/release-packages.nix
    { inherit nixpkgs source haskellPackages; };

  makePackageShell = name:
    makeShell
      { inherit name nixpkgs;
        haskellPackages = haskellPackages-2;
      };

  manual-shell = import ../packages/manual-shell.nix
    { inherit nixpkgs;
      haskellPackages = haskellPackages-2;
    };

  shells = {
    casimir = makePackageShell "casimir";
    quasi-params = makePackageShell "quasi-params";
    manual = manual-shell;
  };

  builds = {
    casimir = haskellPackages-2.casimir;
    quasi-params = haskellPackages-2.quasi-params;
  };
in
{
  inherit shells builds;
}
