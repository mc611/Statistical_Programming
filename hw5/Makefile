hw5.html: hw5.Rmd data/wawa/wawa.rds data/sheetz/sheetz.rds
	Rscript -e "library(rmarkdown); render('hw5.Rmd')"

data/wawa/wawa.rds: parse_wawa.R  data/wawa/wawa_data.rds
	Rscript parse_wawa.R

data/wawa/wawa_data.rds: get_wawa.R
	Rscript get_wawa.R

data/sheetz/sheetz.rds: parse_sheetz.R data/sheetz/sheetz_data.rds
	Rscript parse_sheetz.R
	
data/sheetz/sheetz_data.rds: get_sheetz.R
	Rscript get_sheetz.R

.PHONY: clean_html clean_data
clean_html:
	rm hw5.html
	
clean_data:
	rm -rf data/ ; rm -rf hw5_files/