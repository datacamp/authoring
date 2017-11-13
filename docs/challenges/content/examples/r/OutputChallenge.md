## Use select - ":"

```yaml
type: OutputChallenge 
```

`@context`

Following is a preview of the tibble `iris_small`:

```
# A tibble: 3 x 5
  sepal_len sepal_width petal_len petal_width    species
      <dbl>       <dbl>     <dbl>       <dbl>      <chr>
1       4.3           3       1.1         0.1     setosa
2       5.7           3       4.2         1.2 versicolor
3       6.5           3       5.2         2.0  virginica
```

`@code`

```{r}
select(iris_small, {{var1}})
```

`@pre_challenge_code`

```{r}
library(dplyr)
iris_small <- structure(
    list(
        sepal_len = c(4.3, 5.7, 6.5), sepal_width = c(3, 3, 3), 
        petal_len = c(1.1, 4.2, 5.2), petal_width = c(0.1, 1.2, 2), 
        species = c("setosa", "versicolor", "virginica")
    ), 
    row.names = c(NA, -3L), 
    .Names = c("sepal_len", "sepal_width", "petal_len",  "petal_width",  "species"), 
    class = c("tbl_df", "tbl", "data.frame")
)
```

`@variables`

var1:
  - 'sepal_len:petal_len'
  - 'sepal_len:petal_width'
  - 'sepal_width:petal_width'
  - 'sepal_width:species'
  - 'petal_len:species'

