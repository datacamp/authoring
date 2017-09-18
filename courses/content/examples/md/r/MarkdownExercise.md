## The R Markdown Exercise interface

```yaml
type: MarkdownExercise 
xp: 100 
skills: 1,5
```

For this course, DataCamp has developed a new kind of interface that looks like the R Markdown pane in RStudio. You have a space (my_document.Rmd) to write R Markdown documents, as well as the buttons to compile the R Markdown document. To keep things simple, we'll stick with making html and pdf documents, although it is also possible to create Microsoft Word documents with R Markdown.

When you click "Knit HTML", DataCamp will compile your R Markdown document and display the finished, formatted results in a new pane.

To give you a taste of the things you'll learn in this course, we've prepared two documents in the editor on the right:

- my_document.Rmd containing the actual R Markdown code;
- faded.css, a supplementary file that brands your report.

`@instructions`

- Change the title of the Markdown Document from "Ozone" to "Hello R Markdown".
- Click the "Knit HTML" button to see the compiled version of your sample code.

`@hint`

To change the title, change the value that comes after "title: " in my_document.Rmd on the right. Then, submit your work by clicking the "Knit HTML" button.


`@sample_code`

`@@my_document.Rmd`

```{rmd open = TRUE}
---
title: "Ozone"
output:
  html_document:
    css: faded.css
---

Data

The `atmos` data set resides in the `nasaweather` package of the *R* programming language. It contains a collection of atmospheric variables measured between 1995 and 2000 on a grid of 576 coordinates in the western hemisphere. The data set comes from the [2006 ASA Data Expo](http://stat-computing.org/dataexpo/2006/).

Some of the variables in the `atmos` data set are:

* **temp** - The mean monthly air temperature near the surface of the Earth (measured in degrees kelvin (*K*))

* **pressure** - The mean monthly air pressure at the surface of the Earth (measured in millibars (*mb*))

* **ozone** - The mean monthly abundance of atmospheric ozone (measured in Dobson units (*DU*))

You can convert the temperature unit from Kelvin to Celsius with the formula

$$ celsius = kelvin - 273.15 $$

And you can convert the result to Fahrenheit with the formula

$$ fahrenheit = celsius \times \frac{9}{5} + 32 $$

```{r, echo = FALSE, results = 'hide'}
example_kelvin <- 282.15
```

For example, `r example_kelvin` degrees Kelvin corresponds to `r example_kelvin - 273.15` degrees Celsius.
```

`@@faded.css`

```{css open = TRUE, locked = TRUE}
h1{
  color: white;
  padding: 10px;
  background-color: #3399ff
}

ul {
  list-style-type: square;
}

.MathJax_Display {
  padding: 0.5em;
  background-color: #eaeff3
}
```


`@solution`

`@@solution.Rmd`

```{rmd}
---
title: "Hello R Markdown"
output:
  html_document:
    css: faded.css
---

## Data

The `atmos` data set resides in the `nasaweather` package of the *R* programming language. It contains a collection of atmospheric variables measured between 1995 and 2000 on a grid of 576 coordinates in the western hemisphere. The data set comes from the [2006 ASA Data Expo](http://stat-computing.org/dataexpo/2006/).

Some of the variables in the `atmos` data set are:

* **temp** - The mean monthly air temperature near the surface of the Earth (measured in degrees kelvin (*K*))

* **pressure** - The mean monthly air pressure at the surface of the Earth (measured in millibars (*mb*))

* **ozone** - The mean monthly abundance of atmospheric ozone (measured in Dobson units (*DU*))

You can convert the temperature unit from Kelvin to Celsius with the formula

$$ celsius = kelvin - 273.15 $$

And you can convert the result to Fahrenheit with the formula

$$ fahrenheit = celsius \times \frac{9}{5} + 32 $$

```{r, echo = FALSE, results = 'hide'}
example_kelvin <- 282.15
```

For example, `r example_kelvin` degrees Kelvin corresponds to `r example_kelvin - 273.15` degrees Celsius.
```

`@@faded.css`

```{css}
h1{
  color: white;
  padding: 10px;
  background-color: #3399ff
}

ul {
  list-style-type: square;
}

.MathJax_Display {
  padding: 0.5em;
  background-color: #eaeff3
}
```


`@sct`

```{r}
test_error()
test_rmd_file({
  test_yaml_header(options = "title",
                   not_called_msg = "Make sure to define the title on top of the R Markdown document in the editor.",
                   incorrect_msg = "Set the title of the document to \"Hello R Markdown\". Beware of typos and caps!")
  test_yaml_header(options = "output.html_document.css",
                   not_called_msg = "Don't change anything in the title apart from the document title!",
                   incorrect_msg = "Don't change anything in the title apart from the document title!")
})
success_msg("Nice job! Cool, right? Continue to the next exercise to get introduced to the basics of R Markdown.")
```
