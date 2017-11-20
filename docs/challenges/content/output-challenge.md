# Output Challenge

In an `OutputChallenge`, a student has to match code with the corresponding output, or match output with the corresponding code.

![Output Challenge](images/OutputChallenge1.png)

## Authoring

Every `OutputChallenge` starts with a title (optional) and metadata.

    ## Functions

    ```yaml
    type: OutputChallenge
    ```

### Code

The code block provides a template to generate options for a challenge. It contains references to the variables with `{{ }}` notation.
For example, the code template below uses for variables `var1`, `var2` and `fun1`, whose values are dynamically generated based on the values specified in the variables block.

    `@code`

    ```{r}
    x <- {{var1}}
    y <- {{var2}}
    {{fun1}}(x, y)
    ```

#### Anchoring

To limit the variability between the different options that are generated, it's possible to 'anchor' certain variables. Have a look at this example:

    `@code`

    ```{r}
    x <- {{$var1}}
    y <- {{$var2}}
    {{fun1}}(x, y)
    ```

By prepending `var1` and `var2` with `$`, we're slightly changing the way the four code-to-output or output-to-code options are generated. Instead of randomly selecting a value for `var1`, `var2` and `fun1` for each option, a value for `var1` and `var2` will only be chosen once. All the options that are generated will now use the same var1-var2 combination, and only fun1 will be varied for the different options.

This will typically be useful if you're working with data variables, and you don't want the different options to contain very different dummy data to start from. With anchoring, you prevent the options from being too different, but there's still a high degree of randomization, because the anchored variables are still randomly chosen in the first stage.

#### Multiple Code Blocks

In some cases, you might want to specify several code templates. In this case, for the generation of each option, the backend will first randomly select one of the two templates, and next randomly fill it in based on the provided options for the variables. It's therefore perfectly possible that 2 out of four generated options come from the first template, and the other two come from the second template.

    `@code`

    `@code1`
    ```{r}
    x <- {{var1}}
    y <- {{var2}}
    {{fun1}}(x, y)
    ```

    `@code2`
    ```{r}
    x <- {{var1}}
    y <- {{var2}}
    z <- {{var3}}
    {{fun1}}(x, y, z)
    ```

#### Complete example

Here is the complete `OutputChallenge` example:

    ## Functions

    ```yaml
    type: OutputChallenge
    ```

    `@code`

    ```{r}
    x <- {{var1}}
    y <- {{var2}}
    {{fun1}}(x, y)
    ```

    `@variables`

    ```{yaml}
    var1:
      - 'list(p = c(3, 9))'
      - 'list(q = c(8, 4))'
      - 'list(r = c(2, 6))'
    var2:
      - 'c(3, 4)'
      - 'c(1, 2)'
      - 'c(7, 5)'
      - 'c(8, 6)'
    fun1:
      - 'c'
      - 'list'
    ```