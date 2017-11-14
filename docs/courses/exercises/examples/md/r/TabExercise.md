# R Tab exercise example

    ## Advanced Group By Exercises

    ```yaml
    type: TabExercise 
    lang: r 
    xp: 100 
    ```

    By now you've learned the fundamentals of `dplyr`: the five data manipulation verbs and the additional `group_by()` function to discover interesting group-wise statistics. This exercise brings together these concepts and provides you with an opportunity to combine them to answer some interesting questions.

    Let us suppose we want to find the most visited destination for each carrier. Before reading ahead, please spend a couple of minutes thinking about how you might go about solving this exercise using dplyr.

    As this is the first time you are combining multiple dplyr concepts, we have broken this exercise down into smaller steps. Each step will allow you to focus on a specific concept.

    `@pre_exercise_code`

    ```{r}
    library(dplyr)
    library(hflights)
    ```

    `@sample_code`

    ```{r}
    hflights %>%
      
    ```

    ***

    ```yaml
    type: NormalExercise 
    xp: 30
    ```

    `@instructions`

    Compute for every carrier, the aggregate number of visits to each destination.

    `@solution`

    ```{r}
    hflights %>% 
      group_by(UniqueCarrier, Dest) %>%
      summarise(n = n())
    ```

    `@sct`

    ```{r}
    # Test ...
    ```

    ***

    ```yaml
    type: NormalExercise 
    xp: 30
    ```

    `@instructions`

    Rank the aggregate number of visits for every carrier.

    `@solution`

    ```{r}
    hflights %>% 
      group_by(UniqueCarrier, Dest) %>%
      summarise(n = n()) %>%
      mutate(rank = rank(desc(n)))
    ```

    `@sct`

    ```{r}
    # Test ...
    ```

    ***

    ## Filter

    ```yaml
    type: NormalExercise 
    xp: 30
    ```

    `@instructions`

    Filter the results to only return the top ranked destination for every carrier.

    `@solution`

    ```{r}
    hflights %>% 
      group_by(UniqueCarrier, Dest) %>%
      summarise(n = n()) %>%
      mutate(rank = rank(desc(n))) %>%
      filter(rank == 1)
    ```

    `@sct`

    ```{r}
    # Test ...
    ```
