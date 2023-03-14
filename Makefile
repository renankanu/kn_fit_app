.PHONY: help

help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done

test_coverage: ## Run coverage for tests
	@echo "Running coverage for tests 🧪"
	@flutter test --coverage
	@genhtml coverage/lcov.info -o coverage/html
	@echo "Coverage report generated at coverage/html/index.html"
	@open coverage/html/index.html
	@echo "Done 🎉"