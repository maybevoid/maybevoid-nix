let
  quasi-params = (builtins.fetchGit {
    url = "https://github.com/maybevoid/quasi-params.git";
    rev = "5156727c4ec85ddaae7942840f5e42de884a1950";
  });

  casimir = (builtins.fetchGit {
    url = "https://github.com/maybevoid/casimir.git";
    rev = "0266b5a7348db0b2352bb5d8f6bb5734d95cdc04";
  }) + /casimir;

  dabble = (builtins.fetchGit {
    url = "https://github.com/maybevoid/dabble.git";
    rev = "c6e8371b68b756da5319015431f55212f63b19b3";
  }) + /dabble;

in
{ inherit
    quasi-params
    casimir
    dabble
  ;
}
