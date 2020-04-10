let
  quasi-params = (builtins.fetchGit {
    url = "https://github.com/maybevoid/quasi-params.git";
    rev = "54e87a5316094266a796bbed22afa7a8f94146d7";
  }) + /quasi-params;

  casimir = (builtins.fetchGit {
    url = "https://github.com/maybevoid/casimir.git";
    rev = "0266b5a7348db0b2352bb5d8f6bb5734d95cdc04";
  }) + /casimir;
in
{ inherit
    quasi-params
    casimir;
}
