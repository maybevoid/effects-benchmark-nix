{ mkDerivation, base, dump-core, extensible-effects, freer-simple
, fused-effects, gauge, mtl, polysemy, stdenv, weigh
, attoparsec, vector, aeson, implicit-effects
}:
mkDerivation {
  pname = "effects-benchmarks";
  version = "0.1.0.0";
  src = ../effects-benchmarks;
  isLibrary = false;
  isExecutable = false;
  doBenchmark = true;
  libraryHaskellDepends = [
    base extensible-effects freer-simple fused-effects mtl polysemy
    implicit-effects
  ];
  benchmarkHaskellDepends = [ base dump-core gauge polysemy weigh ];
  doHaddock = false;
  homepage = "https://github.com/patrickt/effects-benchmarks#readme";
  license = stdenv.lib.licenses.bsd3;
}
