{ pkgs ? import <nixpkgs> {} }:
with pkgs;
with haskellPackages;

let
  myPackage = callPackage ./nixops-example.nix {};
in
  if lib.inNixShell then myPackage.env else myPackage