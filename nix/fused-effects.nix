{ mkDerivation, base, criterion, deepseq, doctest, hspec
, inspection-testing, MonadRandom, QuickCheck, random, stdenv
, transformers, unliftio-core
}:
mkDerivation {
  pname = "fused-effects";
  version = "0.3.1.0";
  src = ../fused-effects;
  libraryHaskellDepends = [
    base deepseq MonadRandom random transformers unliftio-core
  ];
  testHaskellDepends = [
    base doctest hspec inspection-testing QuickCheck transformers
  ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "https://github.com/fused-effects/fused-effects";
  description = "A fast, flexible, fused effect system";
  license = stdenv.lib.licenses.bsd3;
}
