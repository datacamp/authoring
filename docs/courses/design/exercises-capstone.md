# Step 3.1 - Capstone exercises

Write up to three exercises that would be used to conclude a course or chapter.

## Examples

From a course on cohort analysis. This has a learning objective, describes the structure of the dataset, describes authentic problems to solve, and contains a reasonable amount of code.

Learning objective: Calculate the risk of developing a disease from exposures, over time
 
You are given a cohort dataset with information on disease and multiple
exposures, measured multiple times over many years:

```
Participant,Time,DiseaseState,Exposure1,Exposure2,Exposure3,Covar1,Covar2
1,1, ...
1,2, ...
1,3, ...
2,1, ...
2,2, ...
...
```

What is the risk of disease of developing the disease for participants with 
higher values of Exposure1-3? When adjusted for covar1 and 2? Plot the results
of the models.

This can be spread over 2 exercises. 

> **Solution** 

```{r}
library(tidyr)
library(purrr)
library(lme4)
library(broom)
library(ggplot2)

# Model
model <- dataset %>% 
  gather(Exposure, ExpValue, Exp1:Exp3) %>% 
  nest(-Exposure) %>% 
  mutate(model = map_df(data, ~lmer(DiseaseState ~ ExpValue * Time + (1|Participant), data = .x)) %>% tidy()

# plot
model %>% 
  ggplot() +
  geom_pointrange(aes(x = estimate, xmin = conf.low, xmax = conf.high)) +
  facet_grid(~ Exposure)
```


## FAQs

### Why am I writing the final exercise first?

Beginning with the final exercise helps you to clarify the point of the course and its scope. 

### How big should the exercise be?

Each exercise (including the final ones) should make the student complete one to four instructions, which usually roughly corresponds to writing one to four lines of code. Exercises can also contain "scaffolding code" that runs before the student sees the exercise, or appears when the exercise begins. In total, you typically want 12 lines of code or less in an exercise.

To provide enough context about what is happening, the final exercise can show a little more than this, as long as you are clear that it would actually constitute multiple exercises at the end of the course.

### How much detail is necessary?

The exercise should explain what the learning objectives are, explain any background knowledge that you are assuming, and provide the code that you expect the students to write. err on the side or more detail rather than less.

### Does the code need to be runnable?

Not yet (though eventually yes). You can write this exercise with 


## Good ideas

### Draft it and iterate

The point where the course finishes is likely to become clearer as you flesh out the details of its contents. It's a good idea not to spend too long on your first attempt at this, but rather to regularly come back to this task and add more details as you know them.

### Write several exercises

Some courses contain a single topic throughout. Others naturally break down into several related topics. If your course is the latter type, then write a capstone exercise for each topic.


## Common problems and their solutions

### Not knowing how far the course will go

It's really common to struggle with knowing how much content can fit into a course, which means it is very difficult to write an appropriate final exercise straight away. Don't worry! Guessing is cheap. Jot down an example exercise on your first pass, and you can always change your mind later on. Once you've completed all of Step 3 and 4, you may wish to come back and revise the endpoint for the course. 


## How will this be reviewed?

This step will be reviewed by at least two people other than your Curriculum Lead, possibly including an external reviewer. They will look for the following points.

- Have you clearly described the learning objective?
- Does the exercise look contain a suitable amount of work for the student to do? (Not too little or too much.)
- Does the exercise look interesting?
- Is it an authentic task, that a real data scientist would perform?
- Is it idiomatic code?


