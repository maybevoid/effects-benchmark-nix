benchmark:
	nix-shell --pure nix/shell.nix --run \
		"cd effects-benchmarks && \
			cabal new-run \
				--write-ghc-environment-files never \
				effects-benchmarks"

implicit-repl:
	nix-shell --pure nix/shell.nix --run \
		"cd effects-benchmarks && \
			cabal new-repl \
				--write-ghc-environment-files never \
				instances-for-implicit-effects"

.PHONY: benchmark implicit-repl