# Unified Authoring format

The basic objective of the unified authoring format is to come up with a simple, unified API to document all forms of content in DataCamp. The unified format defines a generic document structure that consists of metadata, sections, sub-sections, content blocks, and sub-blocks, that allows authoring of different types of content like exercises, challenges, projects, etc. in a consistent way. The format is optimized to be simple enough, yet flexible, and render well on github and other media.

## Metadata

> Every document starts with yaml metadata enclosed between separators.

    --- 
    title_meta  : Chapter 1
    title       : Intro to basics
    description : "In this chapter, you will take your first steps with R."
    ---

## Sections and Subsections

> Every document consists of sections and subsections delimited by separators, `---` and `***`.

    ---
    title_meta  : Chapter 1
    title       : Intro to basics
    description : "In this chapter, you will take your first steps with R."
    ---

    Section 1 > Main

    ***

    Section 1 > Subsection 1

    ***

    Section 1 > Subsection 2

    ---

    Section 2 > Main

    ***

    Section 2 > Subsection 1


## Blocks

> Every section/subsection can consist of a `title`, `metadata` and `content blocks`.

    ## Title

    ```yaml
    key1: value1
    key2: value2
    ```

    Content Block Main

    `@pre_exercise_code`

    Content Block 1

    `@sample_code`

    `@@file1`

    Content Block 2 > Sub Block 1

    `@@file2`

    Content Block 2 > Sub Block 2

A content block is identified by a `@blockname` that is enclosed within a pair of backticks. A content block can contain sub-blocks identified by `@@sub-block-name`, also enclosed within a pair of backticks

## Segments

> Content blocks can be code blocks with multiple segments and YAML metadata.

    ```{r}
    # The vector pioneers has already been created for you
    pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

    # @step
    # ---
    # blanks: [":"]
    # ---
    # Split names from birth year
    split_math <- strsplit(pioneers, split = ":")

    # @step
    # Convert to lowercase strings: split_low
    # ---
    # blanks: ["tolower"]
    # ---
    split_low <- lapply(split_math, tolower)

    # Take a look at the structure of split_low
    # @step
    # ---
    # blanks: ["str"]
    # ---
    str(split_low)
    ```