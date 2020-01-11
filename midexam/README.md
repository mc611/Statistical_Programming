# STA 523 :: Exam 1

## Introduction

The Tour de France is a multi-stage bike race held annually in July. The race
has riders primarily cycle throughout French cities, countrysides, and 
mountains. It is considered one of the toughest endurance events in the world.
Participants will cover over 3,300 kilometers in a 23-day span.

Cycling is both a team and individual sport. Riders are members of teams, but
there are individual accolades up for grabs. Riders in first with regards
to these individual award categories wear special colored / patterned jerseys.


- Overall winner (by time): yellow jersey
- Best sprinter (by points): green jersey
- King of the mountains / best climber (by points): polka dot jersey
- Best young rider (by time): white jersey 


## Data

Data in your repository is from the 2019 Tour de France. To get started, read in 
`tdf_2019.rds` and create an object `tdf` with

```r
tdf <- readRDS(file = "tdf_2019.rds")
```

Most of the variables are self-explanatory. The data should be clean and
organized; maybe not in the form you want, but I did not add any issues as 
I did in Homework 4. Below are a few details on the data.

1. Time is expressed in hours:minutes.seconds.
2. Only the winning rider (team) in a stage has a real time, the time
   for others are relative to the winner's and formatted as "+hh:mm.ss".
3. `sprint` and `climber` are the number of points a rider earned in the stage.

## Tasks

You may use any R package. Include code to load your package with 
`library(package_name)`. If I do not have the package, I will install it.

#### Task 1

Use object `tdf` to create a tidy data frame that contains the following
variables. Each variable should be of the specified type given in parentheses.

* `rider_name` - full name of the cyclist, no need to change the format **(character)**
* `rider_nat` - cyclist's nationality **(character)**
* `team_name` - cyclist's team name **(character)**
* `team_nat` - cyclist's team nationality **(character)**
* `stage` - stage of the Tour **(integer)**
* `dep_city` - departure city for given stage **(character)**
* `arr_city` - arrival city for given stage **(character)**
* `classification` - stage's classification **(character)**
* `distance` - stage's distance that cyclists will ride **(double)**
* `start_date` - stage's start date, not the time **(date)**
* `time` - cyclist's time on a given stage **(character)**
* `time_rank` - rank of cyclists based on time within stage **(integer)**
* `sprint_pts` - sprint points earned by cyclist on given stage **(double)**
* `sprint_rank` - rank of cyclists based on sprint points within stage **(integer)**
* `climb_pts` - climb points earned by cyclist on given stage **(double)**
* `climb_rank` - rank of cyclists based on climb points within stage **(integer)**
* `young_rider_time` - young rider time on a given stage **(character)**
* `young_rider_rank` - rank of cyclists based on young rider time within stage **(integer)**

If a variable's value is missing, code it as `NA`. For example, some cyclists 
may have values `dns`, `dnf`, or `dq` if they did not start,
did not finish, or were disqualified, respectively. 
Similarly, most riders will not have climb points and a climb 
rank since only a few points are up for grabs in a given stage; riders missing 
these values should also have `NA` for the respective variable's value. 

<br/>

#### Task 2

1. Fix the time variables (`time`, `young_rider_time`) so each cyclist's 
   stage time is given rather 
   than just the winner's time and time back from the winner. 
   For example, rather than
   `"04:22.47", "+00:00.00", "+00:00.00", "+00:00.00", ...` in stage 1, it
   should be changed to
   `"04:22.47", "04:22.47", "04:22.47", "04:22.47", ...`. You may keep the
   result as type character or a date/time data type.
   
2. Use the data frame (either from Task 1 or after you fixed the times above)
   to create a data frame that showcases the King of the Mountains competition
   across the 21 stages. To give you an idea of what it should like in a 
   tabular form see below.

Only include the top 30 climbers sorted by `total_climb_points` in your final 
data frame. If a cyclist did not accumulate any points in a given stage, 
set the value to 0. Variable `rider_name` should be of type character. All
other variables should be of type integer.

<br/>

#### Task 3

Use any of the three data frames to construct a single visualization that 
depicts something about the 2019 Tour de France. A single visualization can
include subplots, but I do not want, for example, 10 unrelated graphics. Your
visualization should be well-polished with aesthetics, font size, and style
chosen appropriately. You may construct this visualization with the mindset
that it would appear in a presentation. Thus, animations are okay to utilize.
