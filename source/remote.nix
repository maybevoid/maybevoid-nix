let
  quasi-params = (builtins.fetchGit {
    url = "https://github.com/maybevoid/quasi-params.git";
    rev = "8eedfff99898a57c664ad7f2f9348ff255e87764";
  }) + /quasi-params;

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
