benchmark:
	nix-shell --pure nix/shell.nix --run \
		"cd effects-benchmarks && \
			cabal new-run \
				--write-ghc-environment-files never \
				effects-benchmarks"

.PHONY: benchmark