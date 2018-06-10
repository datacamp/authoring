# Stochastic Processes in R<br/>by Dave Robinson

## Step 1: Brainstorming

### What problem(s) will student learn how to solve?

They'll learn the generative models behind several stochastic process models, and understand to simulate them with R functions.

### What techniques or concepts will students learn?

* In learning three new distributions, the **exponential**, **gamma**, and **uniform**, they'll reinforce the concept that (unlike the binomial) distributions can be continuous
* They'll become more familiar with the use of simulation to understand probability models and answer questions about them.

### What technologies, packages, or functions will students use?

* The distribution-related functions around the exponential, gamma, and uniform functions
* The `sample`, `cumsum`, `replicate`, and `accumulate` functions

### What terms or jargon will you define?

* Random walk, Markov chain, transition matrix, waiting time, Poisson process, Poisson point process

### What analogies will you use to explain concepts?

* Two people gambling repeatedly with a coin for a random walk
* Randomly generated text in a Markov chain
* A light bulb burning out for an exponential variable/Poisson process
* Simulating trees in a forest for a spatial Poisson process

## Step 2:  Who Is This Course For?

*This step wasn't part of our process when this spec was written.*

## Step 3: What Will Learners Do Along the Way?

**Last exercise in Chapter 2**: Write a function that simulates 100 steps from a Markov chain of words, given a `transition_matrix` with row and column names.

**Skills**: 

* Understand what a Markov chain is
* Understand transition matrices are, including subsetting a row and row/col names
* Use `sample` with `prob` to find the next state in a transition matrix
* Use `accumulate` to save up many steps in a chain

**Solution**:

```
library(purrr)

simulate_step <- function(state) {
  state <- sample(nrow(transition_matrix), 1, prob = transition_matrix[state, ])
  colnames(transition_matrix)[state]
}

accumulate(1:100, simulate_step, .init = "the")
```

**Last exercise in the course**: Write a function that, given a number of points, the width of a region, and the height of a region, generate that many points in a Poisson point process.

Use it to plot 50 points in the space of 10x10.

**Skills required**:

* Understand how a point process comes from a combination of the Poisson and the uniform, even in two dimensions
* Create a function that takes arguments (we'd provide scaffolding)
* Simulate from the Poisson distribution using `rpois`
* Simulate from the uniform distribution using `runif`, twice
* Use `plot` to compare and `x` and `y` (we'd give scaffolding).

**Solution**

```
simulate_points <- function(density, x_width, y_width) {
  number <- rpois(1, density * x_width * y_width)
  x <- runif(number, 0, x_width)
  y <- runif(number, 0, y_width)
  
  plot(x, y)
}

simulate_points(1, 10, 10)
```

**Middle of chapter 2**: Generate three steps in a Markov chain given a transition matrix and starting state.

**Solution**:

```
step2 <- sample(nrow(transition_matrix), 1, transition_matrix[state, ])
step3 <- sample(nrow(transition_matrix), 1, transition_matrix[state2, ])
step4 <- sample(nrow(transition_matrix), 1, transition_matrix[state3, ])
```

**Middle of chapter 4**: Randomly generate 100 events in a one-dimensional Poisson process with a rate of 3 per second by simulating exponential waiting times. Find the distribution of how many events happen in the first 2 seconds.

**Solution**:

```
cumsum(rexp(100, 3))

replicate(1000, sum(cumsum(rexp(100, 3)) <= 2))
```

## Step 4: How are the concepts connected? (Course outline)

1. Random Walks
   1. Random walks: Imagine you were gambling with a friend, and betting on a coin. Each time you either lose one dollar or gain one dollar. This is a random walk: at any moment, it could go up or down one step.
      * You can simulate a step with `sample()`, and find the cumulative position with `cumsum()`.
      * You can plot this with `plot()`, which looks a bit like a stock price graph.
   2. Biased random walk: So far the random walk has been symmetrical, with an equal probability of gaining or losing.
      * What if the game were a bit rigged: each time, you had a 51% chance of losing? This is similar to playing in a casino, where the casino has an advantage we call the "house edge".
      * Try a very large number of steps: watch it "plummet". In terms of casino games, this proves the old expression that "the house always wins".
   3. Properties of a random walk: Where will a random walk end up after 10 steps? 100 steps?
      * Introduce `replicate()` for simulating it.
      * The end position looks like a normal distribution (bell curve), because of a mathematical result called the central limit theorem.
      * Mean and variance of the end position.
2. Markov chains
   1. Transition matrices
      * A random walk is one case of a Markov chain: a process where the next step depends only on the current state. Example we'll return to: Markov chain of words.
      * Creating a transition matrix, here's what it means: each cell has probability of going from a particular state to another state
      * Two multiple choice questions: what is the probability of going from state 1 to 2 with this matrix?
   2. One step in a Markov chain
      * `sample(2, 1, prob = transition_matrix[state, ])` lets you randomly step
      * Try it three times in a row
      * Introduce an "absorbing" state
   3. Accumulating steps in a chain
      * Using the `purrr` accumulate function to add up states into a chain.
      * Notice how an absorbing state works.
   4. Example: Markov chain of words
      * We're giving you a transition matrix of words. These were determined based on a set of newspapers
      * Simulate a series of words.
3. The Exponential Distribution
   1. The exponential distribution: Imagine a light bulb has a random chance of burning out, but 
      * Show using `rexp` to simulate
      * Go over the mean and the expected value
   2. The memoryless property
      * If a light bulb hasn't burned out in the first 5 days, how much longer would we expect it to last?
      * Try `exp_greater_5 <- exp_sample[exp_sample >= 5]`, then examine the properties and distribution of `exp_greater_5`.
      * This is still an exponential distribution
   3. The gamma distribution
      * What if you replaced the light bulb each time? How long would it take to replace 3 lightbulbs?
      * Simulate with `sum(rexp(3, 5))`
      * This is the gamma distribution
4. Poisson processes
   1. Poisson process
      * Take the exponential waiting times from the last exercise, and use `cumsum`
      * These are event times in what we call a Poisson process.
      * Example: website visits per hour, radioactive decay, cars driving by.
   2. The uniform distribution
      * Another way of simulating a Poisson process
      * Approach this by asking two questions in a row. How many events are in this interval (Poisson), and where are they located (uniform)?
      * The uniform distribution randomly picks points in an interval, between a minimum and maximum. `ruinf`.
   3. Poisson point process
      * Everything in this course was over time, but this also works in spatial simulations.
      * Simulate rabbits located in a forest. (It could also be cells under a microscope, or cities in a country). Suppose the position of each rabbit were completely independent of all the others.
      * Approach this by asking two questions in a row. How many points are in this region, and where are they located? This is a two-dimensional version of a Poisson process.

## Step 5: Course Overview

**Course Description**

Whether it's prices in the stock market, the number of visitors to a
website, or the population of rabbits in a forest, many phenomena that
we'd like to model with statistics involved numbers tracked over
time. In this course, you'll be introduced to the field of stochastic
processes, an area of probability studying systems that change over
time. You'll learn about common statistical models such as random
walks, Poisson processes, and Markov chains, as well as being
introduced to the exponential and gamma distributions. These provide
the fundamentals for many statistical methods common in finance,
biology, and many other fields.

**Learning Objectives**

* Be introduced to statistical models often used to represent a system changing over time: random walks, Poisson processes, and Markov chains
* Learn about two new statistical distributions, the exponential and the gamma, that are important in modeling .
* Gain experience with probability concepts such as random variables, distributions, expected value, and variance
* Practice using simulation to understand and answer probability problems

**Prerequisites**

* [Intermediate R](https://www.datacamp.com/courses/intermediate-r)
* [Foundations of Probability in R](https://www.datacamp.com/courses/foundations-of-probability-in-r)