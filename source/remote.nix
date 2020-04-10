let
  quasi-params = (builtins.fetchGit {
    url = "https://github.com/maybevoid/quasi-params.git";
    rev = "3e2332aa2a380e1d6bc7bc226cf50819b2e3cfd5";
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
