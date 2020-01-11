# STA 523 :: Homework 1

## Introduction

An n-digit number that is the sum of the nth powers of its digits is called an n-narcissistic number. It is also known as an Armstrong number. For example,
153 is an Armstrong number since ![](https://latex.codecogs.com/gif.latex?1^3&space;&plus;&space;5^3&space;&plus;&space;3^3&space;=&space;153).
However, 25 is not an Armstrong number since ![](https://latex.codecogs.com/gif.latex?2^2&space;&plus;&space;5^2&space;\neq&space;25).

## Tasks

#### Task 1

Write a function in R called `is.armstrong()` that performs a logical test
on if a positive integer is an Armstrong number. Your function should have
one argument.

Arguments:
	
- `x` takes an atomic vector of positive integers 
	(need not by of type integer) up to 999.

The function should return a logical atomic vector that is the same length as 
the atomic vector input in `x`. Make your function as robust as possible.
You may only use functions and operators available in base R.

#### Task 2

Perform testing and validation of your function. Try the test cases provided
and add others as you see fit (the list I provided is not exhaustive). This
may inspire you to go back and revise function `is.armstrong()`.
