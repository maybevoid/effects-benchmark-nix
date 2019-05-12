{ nixpkgs ? import <nixpkgs> {} }:
let
  fused-effects =
    nixpkgs.haskellPackages.callPackage ./fused-effects.nix { };

  implicit-effects =
    nixpkgs.haskellPackages.callPackage ../implicit-effects/default.nix { };

  haskellPackages = nixpkgs.haskellPackages.override {
    overrides = self: super: {
      inherit fused-effects implicit-effects;
    };
  };

  effects-benchmark =
    haskellPackages.callPackage ./effects-benchmark.nix { };
in
  effects-benchmark