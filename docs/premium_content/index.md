# Index

The `index.md` file provides a detailed outline of the course. It consists of chapters separated by `---` and exercises separated by `***`. Each exercise can have arbitrary YAML metadata. A complete example of an `index.md` file for the `dplyr` course, can be found [here](examples/index-dplyr-2.md).

    ---
    title: Introduction to dplyr
    ---

    ## Mutating joins
      
    Mutating joins add new variables to one data set from another data set, matching 
    observations across rows in the process. This chapter will explain the various ways
    you can join data sets together and what happens when you do.

    ### Welcome to the course!

    ```yaml
    type: VideoExercise
    ```

    Introduction. Why use dplyr to join data? Many data sets come in multiple tables, 
    in fact that's the easiest way to store large data. dplyr joins faster are faster 
    than base merges and preserve row order. You can also use them with dplyr's built 
    in SQL backend.

    ***

    ### The advantages of dplyr

    ```yaml
    type: MultipleChoiceExercise
    ```

    Which is not a reason to use dplyr to join data?

    ---

    ## Filtering joins and set operations
      
    Filtering joins and Set operations combine information from data sets without adding
    new variables. Filtering joins filter the observations of one data set based on 
    whether or not they occur in a second data set. Set operations use combinations of 
    observations from both data sets to create a new data set.

    ### Semi-joins

    ```yaml
    type: VideoExercise
    ```

    Have you ever tried to filter data based on the combination of many variables. You 
    could try to do this with `filter()`, but it will be much easier with a semi-join.

    ***

    ### Semi-join

    ```yaml
    type: NormalExercise
    ```