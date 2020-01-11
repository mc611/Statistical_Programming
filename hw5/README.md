# STA 523 :: Homework 5

"To some, the roadside gas station, also known as a convenience store, is a 
necessary evil as part of an enjoyable road trip. But for some people in the 
northeastern U.S., a convenience store is more than a stop, it’s a destination.

Sheetz started in Western Pennsylvania, Wawa on the eastern side of the state. 
Decades later, each has grown to be a full service, one-stop shop. 
Like two squirrels fighting for the last acorn before the winter snows, the 
friendly rivalry between Sheetz and Wawa lovers has seeped deep into the culture
of the region. It’s the kind of thing you ask on the first date. Parents hope 
to pass their own affiliation down to their children. Team Sheetz or Team Wawa? 
But if you ask the people in the area, you can’t have it both ways."

-[https://www.sheetzvswawa.com](https://www.sheetzvswawa.com)

The above is probably a little hyperbolic, but let's examine this fuel turf war through
scraping, APIs, and some analysis.

## Tasks

#### Task 1

**Scrape and parse Wawa**

Scrape the Wawa data using the provided base url. Stores are indexed by a 5 
digit value from (possibly) 00000 up to (possibly) 01000 and 
from (possibly) 08000 up to (possibly) 09000. There are not 2000
stores, only a few hundred. Save each store's data in `data/wawa/`.

Space out your requests when downloading the data. However, `make` must be
able to build your `hw5.html` file in under 3 hours.

Once you have locally cached all the Wawa data, parse the data to get it in
an appropriate form for task 3. This may be a list or data frame. Save this
object in `data/wawa/`.

Include a detailed write-up of your scraping procedure.

#### Task 2

**Scrape and parse Sheetz**

Scrape the Sheetz data using the provided URL. You will need
to navigate through the website to obtain all the data -  do not hard code the
URLs. Save each group of data in `data/sheetz/`.

Space out your requests when downloading the data. This task will be much quicker
than getting the Wawa data. Keep in mind that `make` must be
able to build your `hw5.html` file in under 3 hours.

Once you have locally cached all the Sheetz data, parse the data to get it in
an appropriate form for task 3. This may be a list or data frame. Save this
object in `data/sheetz/`

Include a detailed write-up of your scraping procedure.

#### Task 3

**Analysis**

Where does the fuel turf war converge? Are there any rival fuel stations inside
each station's "region" or are these two areas completely separable?

There is no one way to answer these questions. You can create visualizations
or perform some calculations. However, your answer should be more than a list of 
rival stores that are proximal to each other.

Include a detailed write-up of your procedures and answers to the questions.

Notes:

- You may use a subset of the Wawa data.
- To calculate the distance between two spatial locations on a sphere it does
  not make sense to use Euclidean distance.

## Project organization

#### Directories, scripts, and Rmarkdown

Create directories `data/sheetz/` and `data/wawa/`. These folders will
contain the data you scrape.

You should create the following script files:

- `get_wawa.R`: this script should fetch all the Wawa data at the available links.
  The resulting data should be saved in `data/wawa/`.
  
- `parse_wawa.R`: this script should read in the saved Wawa data, and construct an
  appropriate data frame or other list object you will be able to use in 
  task 3. It should output a file named `wawa.rds` that will live in `data/wawa/`.
  
- `get_sheetz.R`: this script should function similar to `get_wawa.R` but
  for the Sheetz data.
  
- `parse_sheetz.R`: this script should function similar to `parse_wawa.R` but
  for the Sheetz data.

The main file, `hw5.Rmd`, should contain your documentation and explanations 
for all tasks. In addition, task 3 will be implemented in this file.

#### make

A starter `Makefile` has been included in the repository. It is your job 
finish it by connecting all of the project's prerequisites with the final
target goal being `hw5.html`. Your `Makefile` should be set up such that if
there are no data files, `make` will execute the recipes to run the necessary
scripts for the data to be downloaded, parsed, and `hw5.html` generated.
