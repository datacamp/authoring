# Unified Authoring Format

The basic objective of the unified authoring format is to come up with a simple, unified API for all DataCamp content. The unified format specifies metadata, sections, sub-sections, content blocks, and sub-blocks that allow consistent authoring of exercises, challenges, projects, and other content. The format is simple but flexible, and renders well on GitHub and elsewhere.

## Metadata

> Every document starts with YAML metadata between triple-dash separators.

    --- 
    title_meta  : Chapter 1
    title       : Intro to basics
    description : "In this chapter, you will take your first steps with R."
    ---

## Sections

> Every document consists of sections and subsections delimited by `---` and `***` separators.

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

> Every section or subsection can contain title, metadata, and content blocks.

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

A content block is identified by a `@blockname` tag that is enclosed within backticks. A content block can contain sub-blocks identified by `@@sub-block-name`, also enclosed within backticks.

## Segments

> Content blocks can be code blocks with multiple segments and YAML metadata.

    ```{r}
    # The vector pioneers has already been created for you.
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
