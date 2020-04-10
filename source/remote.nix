let
  quasi-params = builtins.fetchGit {
    url = "https://github.com/maybevoid/quasi-params.git";
    rev = "";
  };

  casimir = builtins.fetchGit {
    url = "https://github.com/maybevoid/casimir.git";
    rev = "";
  };
in
{ inherit
    quasi-params
    casimir;
}
