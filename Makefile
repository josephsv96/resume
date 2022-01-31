OUT_DIR := build
MAIN_FILE := main

.PHONY: all
all:
	latexmk -interaction=nonstopmode -outdir=$(OUT_DIR) -pdf -halt-on-error $(MAIN_FILE)
	cp build/$(MAIN_FILE).pdf resume.pdf

.PHONY: clean
clean:
	rm -rf $(filter-out $(OUT_DIR)/$(MAIN_FILE).pdf, $(wildcard $(OUT_DIR)/*))
