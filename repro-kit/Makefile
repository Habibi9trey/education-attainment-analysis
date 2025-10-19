# Quickstart: make setup (Python + R), then make render
.PHONY: setup py r render clean

PY?=python3

setup: py r
	@echo "✅ Setup complete."

py:
	$(PY) -m pip install -U pip
	$(PY) -m pip install -r requirements.txt

r:
	Rscript install.R

render:
	Rscript -e 'rmarkdown::render("reports/ssa_education_report.Rmd", output_format="html_document")'

clean:
	rm -rf renv/library renv/staging .Rprofile .Rhistory __pycache__
