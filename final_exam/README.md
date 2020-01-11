# STA 523 :: Exam 2

## Introduction

[News API](https://newsapi.org/) gives you access to breaking news headlines 
and historical articles from over 30,000 news sources. The purpose of this exam 
is to use their API to create an RShiny news deck (dashboard). A free account 
with News API will grant you 500 requests per day and allow you to query 
articles up to one month old. Breaking news headlines do have a 15 minute 
time delay.

## Tasks

You may use any R package. Include code to load your package with 
`library(package_name)`. If I do not have the package, I will install it.

#### Task 1

Understand the News API by reading through their [documentation](https://newsapi.org/docs/endpoints/top-headlines). 
To demonstrate that you understand how to retrieve data and prepare you for
Task 2, perform the following three API GET requests.

1. Get all the news sources categorized as general or business, where the
   language is English and the country is United States. Filter the result
   to obtain the ids for CNN, Fox News, The Wall Street Journal, and Reuters.
2. Get the most recent headline title from CNN, Fox News, The Wall Street Journal, 
   and Reuters about "taxes", where the country is United States.
3. Get the headline titles from CNN, Fox News, The Wall Street Journal, 
   and Reuters on 11-01-19, where "healthcare" was in the title,
   the country is United States, and language is English.

<br/>

#### Task 2

You will now create three helper functions, one for each API endpoint. 

1. Create `get_sources()` with arguments `category` and `api_key`. This function
   serves as a wrapper for News API's "Sources" endpoint.

2. Create `get_headlines()` with arguments `sources`, `q`, `page_size`,
   `page`, and `api_key`. This function serves as a wrapper for News API's 
   "Top headlines" endpoint.
   
3. Create `get_historic()` with arguments `q`, `q_title`, `sources`, `from`,
   `to`, `sort_by`, `page_size`, `page`, `api_key`. This function serves
   as a wrapper for News API's "Everything" endpoint.
   
For all functions, sources should only be a subset of CNN, Fox News, 
The Wall Street Journal, and Reuters. The country will always be United States,
and the language will always be English. Other request parameters you see in the 
API documentation and not specified above are
not required to be included in your wrapper functions as parameters.

Function requirements:

- Each function should return a tidy data frame
- Each function should include basic input checks

<br/>

#### Task 3

Create a Shiny app or dashboard that serves as a central news hub. This should
be embedded in your Rmd file. You may want to work with the 
[Navigation Bar Page](https://shiny.rstudio.com/gallery/navbar-example.html)
layout or [shinydashboard](https://rstudio.github.io/shinydashboard/). Given
the three API endpoints, both options will neatly structure your UI.

Required app features:

1. The user should be able to specify any of the `get_*()` function parameters.

2. You should make use of action button(s) that only retrieve News API data when
   the button is clicked.
   
3. It should be well organized and aesthetically pleasing. You may choose which
   information from the query to present to the user. This can include the 
   article's title, link, author, image, etc. Consider incorporating a
   [modal dialog box](https://shiny.rstudio.com/reference/shiny/latest/modalDialog.html).
   
The rest is at your discretion. How many articles you want to display,
an instruction page, an API call counter, any other user feedback is all up
to you. Feel free to add colors, a theme, or fancy font.

<br/>
