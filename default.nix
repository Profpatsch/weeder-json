{ pkgs ? import <nixpkgs> {} }:

let
  src = pkgs.nix-gitignore.gitignoreSource [ ".git/" ] ./.;
in
pkgs.haskell.lib.doJailbreak
  (pkgs.haskellPackages.callCabal2nix "weeder" src {})
