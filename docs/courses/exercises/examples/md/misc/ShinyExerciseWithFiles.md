## Shiny Exercise with Files


```yaml
type: ShinyExercise
xp: 100
```

This is an introductory exercise for Shiny

`@instructions`

Build an awesome app by completing `ui.R` and `server.R` !

`@pre_exercise_code`

```{r}
library(shiny)
```

`@sample_code`

`@@ui.R`

```{r open = TRUE, focus = TRUE}
library(shiny)
shinyUI(bootstrapPage(
  textInput('username', 'Enter your name'), ___('_____')
))
```

`@@server.R`

```{r open = TRUE}
library(shiny)
shinyServer(function(input, output){
  output$greeting <- _____({paste('Hello', input$____)})
})
```

`@@global.R`

```{r}
# Define some global variables/functions for use in ui and server
```

`@solution`


`@@ui.R`

```{r}
library(shiny)
shinyUI(bootstrapPage(
  textInput('username', 'Enter your name'), textOutput('greeting')
))
```

`@@server.R`

```{r}
library(shiny)
shinyServer(function(input, output){
  output$greeting <- renderText({paste('Hello', input$username)})
})
```

`@@global.R`

```{r}
# Define some global variables/functions for use in ui and server
```

`@sct`

```{r}
# Test the submission
```

