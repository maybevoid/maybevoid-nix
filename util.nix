let
  callPackage = self: name: src:
    self.callCabal2nix
      name
      src
      {}
  ;

  callGitPackage = self: name: url: rev:
    callPackage self
      name
      (builtins.fetchGit {
        inherit url rev;
      })
    ;
in
{ inherit callPackage callGitPackage;
}
