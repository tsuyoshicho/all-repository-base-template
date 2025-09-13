# from https://future-architect.github.io/articles/20231012a/
SHELL := bash
.SHELLFLAGS := -eu -o pipefail -c
.DEFAULT_GOAL := help

# export ENVIRONEMNT variable
# single export ex.
	# export HOGE=hoge
# all export ex.
	# export
	# HOGE=hoge

.PHONY: help
help: ## display this help screen
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

# version Update test
# REVIEWDOG_VERSION=0.21.0
