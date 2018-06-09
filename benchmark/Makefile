
.PHONY: FORCE

medium_bench: FORCE
	$(MAKE) -C ./medium MIPS_TOOLS_PATH=$(MIPS_TOOLS_PATH) all

advanced_bench: FORCE
	$(MAKE) -C ./advanced MIPS_TOOLS_PATH=$(MIPS_TOOLS_PATH) all

medium_bench_clean: FORCE
	$(MAKE) -C ./medium clean

advanced_bench_clean: FORCE
	$(MAKE) -C ./advanced clean
