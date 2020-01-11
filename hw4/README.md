# STA 523 :: Homework 4

## Introduction

You will work with semi-synthetic data on meteorite landings comprised by
The Meteoritical Society. The data was not tidy from the start and was made
less tidy by me.

The main purpose of this assignment is to get practice tidying data via
`tidyr`, `purrr`, and regexs. The details
below will give you some hints on how best to achieve tidy data and what it
means in this context.

## Tasks

Convert `nasa` into a tidy data frame. The following variables should be included
in your final tidy data frame: `name`, `id`, `features`, `nametype`, `recclass`, 
`mass`, `fall`, `year`, `month`, `day`, `hours`, `minutes`, `seconds`, 
`reclat`, `reclong`, `geo_coord`.

#### Task 1

Transform list `nasa` into a data frame called `nasa_df`. Try as much as 
possible to avoid referencing variables by position or name.
Unimportant variables may be removed in this process; however, parsing 
individual data values, correcting errors, converting variable types, and so on,
should be left for task 2.

<i>
Your score will depend on your code's efficiency, quality, and correctness.
In this setting, `map()` and `apply()` variants are much better than loops.
</i>

#### Task 2

Tidy `nasa_df` so it only contains the relevant variables mentioned above.

Below are some hints to help you get `nasa_df` tidy.

1. Each row should be a unique meteorite landing.

2. Your variables should be of a workable and reasonable type. For example,
	numeric-style variables should not be of type raw.

3. At no point in your code should you output the entire list/data frame.

4. Values may need to be parsed and cleaned; obvious mistakes should be 
	corrected or handled appropriately.

5. Create helper functions.

<i>
Your score will depend on your code's efficiency, quality, and correctness.
</i>

#### Task 3

Document your tidying process. Non-obvious choices should be justified. Your
write-up should clearly and concisely reflect your code. This documentation
should supplement your code comments.
