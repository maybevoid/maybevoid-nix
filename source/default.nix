{ useLocal }:
let
  local-src = import ./local.nix;
  remote-src = import ./remote.nix;
in
if useLocal then local-src else remote-src
