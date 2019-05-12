# effects-benchmark-nix

This is a fork of
[patrickt/effects-benchmarks](https://github.com/patrickt/effects-benchmarks)
with addition of Nix setup and benchmarking for
[implicit-effects](https://github.com/maybevoid/implicit-effects).

## Build Instruction

Make sure Nix is installed, and the git submodules are initialized.
From root of the project directory run `make benchmark`.

## Benchmark Results

Following is the benchmark result running on my Thinkpad laptop:

```
*** Time benchmarks ***

benchmarked Countdown/Put/fused-effects
time                 5.925 μs   (5.802 μs .. 6.020 μs)
                     0.997 R²   (0.995 R² .. 0.999 R²)
mean                 6.162 μs   (6.063 μs .. 6.494 μs)
std dev              501.1 ns   (206.1 ns .. 1.049 μs)
variance introduced by outliers: 52% (severely inflated)

benchmarked Countdown/Put/mtl
time                 6.505 μs   (6.156 μs .. 7.231 μs)
                     0.943 R²   (0.879 R² .. 0.995 R²)
mean                 6.270 μs   (6.143 μs .. 6.583 μs)
std dev              649.9 ns   (322.0 ns .. 1.266 μs)
variance introduced by outliers: 63% (severely inflated)
benchmarked Countdown/Put/polysemy
time                 2.503 ms   (2.460 ms .. 2.548 ms)
                     0.996 R²   (0.991 R² .. 0.998 R²)
mean                 2.517 ms   (2.466 ms .. 2.572 ms)
std dev              179.8 μs   (148.6 μs .. 230.4 μs)
variance introduced by outliers: 45% (moderately inflated)

benchmarked Countdown/Put/freer-simple
time                 1.786 ms   (1.749 ms .. 1.819 ms)
                     0.996 R²   (0.993 R² .. 0.998 R²)
mean                 1.773 ms   (1.740 ms .. 1.807 ms)
std dev              112.2 μs   (90.42 μs .. 148.2 μs)
variance introduced by outliers: 40% (moderately inflated)

benchmarked Countdown/Put/extensible-effects
time                 1.815 ms   (1.763 ms .. 1.867 ms)
                     0.994 R²   (0.989 R² .. 0.997 R²)
mean                 1.901 ms   (1.853 ms .. 1.970 ms)
std dev              192.3 μs   (124.5 μs .. 282.8 μs)
variance introduced by outliers: 64% (severely inflated)

benchmarked Countdown/Put/implicit-effects
time                 1.455 ms   (1.424 ms .. 1.493 ms)
                     0.996 R²   (0.993 R² .. 0.998 R²)
mean                 1.441 ms   (1.419 ms .. 1.466 ms)
std dev              79.11 μs   (65.77 μs .. 99.89 μs)
variance introduced by outliers: 33% (moderately inflated)

benchmarked Countdown/Put/shallow
time                 295.2 μs   (289.8 μs .. 300.7 μs)
                     0.996 R²   (0.994 R² .. 0.998 R²)
mean                 295.5 μs   (291.4 μs .. 300.1 μs)
std dev              14.38 μs   (11.91 μs .. 17.79 μs)
variance introduced by outliers: 28% (moderately inflated)

benchmarked Countdown/Put+Exc/fused-effects
time                 9.132 μs   (8.928 μs .. 9.480 μs)
                     0.993 R²   (0.987 R² .. 0.999 R²)
mean                 9.075 μs   (8.976 μs .. 9.237 μs)
std dev              416.0 ns   (279.8 ns .. 585.9 ns)
variance introduced by outliers: 27% (moderately inflated)

benchmarked Countdown/Put+Exc/mtl
time                 9.053 μs   (9.001 μs .. 9.109 μs)
                     1.000 R²   (0.999 R² .. 1.000 R²)
mean                 8.975 μs   (8.927 μs .. 9.022 μs)
std dev              157.4 ns   (129.5 ns .. 189.3 ns)

benchmarked Countdown/Put+Exc/polysemy
time                 466.2 μs   (454.5 μs .. 478.5 μs)
                     0.993 R²   (0.988 R² .. 0.997 R²)
mean                 472.5 μs   (464.3 μs .. 481.4 μs)
std dev              28.55 μs   (24.05 μs .. 33.33 μs)
variance introduced by outliers: 38% (moderately inflated)

benchmarked Countdown/Put+Exc/freer-simple
time                 1.509 ms   (1.483 ms .. 1.532 ms)
                     0.996 R²   (0.994 R² .. 0.998 R²)
mean                 1.502 ms   (1.478 ms .. 1.533 ms)
std dev              93.98 μs   (74.83 μs .. 123.5 μs)
variance introduced by outliers: 38% (moderately inflated)

benchmarked Countdown/Put+Exc/extensible-effects
time                 1.514 ms   (1.462 ms .. 1.562 ms)
                     0.991 R²   (0.984 R² .. 0.995 R²)
mean                 1.619 ms   (1.576 ms .. 1.704 ms)
std dev              196.9 μs   (131.2 μs .. 329.9 μs)
variance introduced by outliers: 71% (severely inflated)

benchmarked Countdown/Put+Exc/implicit-effects
time                 1.477 ms   (1.443 ms .. 1.525 ms)
                     0.992 R²   (0.984 R² .. 0.998 R²)
mean                 1.467 ms   (1.444 ms .. 1.500 ms)
std dev              92.51 μs   (68.99 μs .. 139.9 μs)
variance introduced by outliers: 40% (moderately inflated)

benchmarked Countdown/Put+Exc/shallow
time                 57.70 μs   (57.37 μs .. 57.98 μs)
                     1.000 R²   (1.000 R² .. 1.000 R²)
mean                 57.97 μs   (57.74 μs .. 58.27 μs)
std dev              880.8 ns   (658.8 ns .. 1.502 μs)

benchmarked HTTP/fused-effects
time                 10.64 μs   (10.61 μs .. 10.69 μs)
                     1.000 R²   (1.000 R² .. 1.000 R²)
mean                 10.64 μs   (10.62 μs .. 10.66 μs)
std dev              74.07 ns   (53.59 ns .. 101.1 ns)


benchmarked HTTP/polysemy
time                 18.67 ms   (18.27 ms .. 19.09 ms)
                     0.998 R²   (0.997 R² .. 0.999 R²)
mean                 19.33 ms   (18.67 ms .. 21.33 ms)
std dev              2.685 ms   (698.0 μs .. 5.386 ms)
variance introduced by outliers: 64% (severely inflated)

benchmarked HTTP/extensible-effects
time                 2.171 ms   (2.111 ms .. 2.230 ms)
                     0.992 R²   (0.982 R² .. 0.997 R²)
mean                 2.173 ms   (2.128 ms .. 2.227 ms)
std dev              171.5 μs   (129.8 μs .. 241.3 μs)
variance introduced by outliers: 51% (severely inflated)

benchmarked HTTP/implicit-effects
time                 1.724 ms   (1.693 ms .. 1.760 ms)
                     0.997 R²   (0.995 R² .. 0.999 R²)
mean                 1.722 ms   (1.704 ms .. 1.741 ms)
std dev              63.37 μs   (52.07 μs .. 78.11 μs)
variance introduced by outliers: 19% (moderately inflated)

benchmarked HTTP/Deep embedding
time                 3.066 ms   (2.946 ms .. 3.225 ms)
                     0.988 R²   (0.976 R² .. 0.998 R²)
mean                 2.986 ms   (2.937 ms .. 3.056 ms)
std dev              193.9 μs   (147.9 μs .. 261.2 μs)
variance introduced by outliers: 40% (moderately inflated)

benchmarked HTTP/Shallow embedding
time                 17.53 μs   (17.12 μs .. 17.94 μs)
                     0.996 R²   (0.995 R² .. 0.998 R²)
mean                 17.54 μs   (17.26 μs .. 17.92 μs)
std dev              1.080 μs   (843.0 ns .. 1.532 μs)
variance introduced by outliers: 38% (moderately inflated)

benchmarked HTTP/freer-simple
time                 2.151 ms   (2.098 ms .. 2.213 ms)
                     0.995 R²   (0.993 R² .. 0.998 R²)
mean                 2.157 ms   (2.123 ms .. 2.197 ms)
std dev              116.8 μs   (92.12 μs .. 169.8 μs)
variance introduced by outliers: 33% (moderately inflated)

*** Space benchmarks (these will take some time to run) ***

Countdown

  Case                Allocated  GCs
  fused-effects          -4,040    0
  mtl                     4,032    0
  polysemy                1,032    0
  freer-simple            1,096    0
  extensible-effects      1,304    0
  implicit-effects        1,568    0
  shallow                   232    0

Countdown + exc

  Case                Allocated  GCs
  fused-effects              16    0
  mtl                    -4,048    0
  polysemy                  472    0
  freer-simple              544    0
  extensible-effects        664    0
  implicit-effects       -2,896    0
  shallow                 4,040    0
```