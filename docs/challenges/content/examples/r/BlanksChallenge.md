## Test select - 2

```yaml
type: BlanksChallenge
```

`@context`

Following is a preview of the data frame `df`: 

```
  x1 x2 x3 x4
1 10 12  2  7
2  8  5  6 15
3 13  1  4  9
```

`@code`

`@@code1`

```{r}
library(dplyr)
df %>%
    select({{_var2}})
```

`@@code2`

```{r}
library(dplyr)
{{_var1}} %>%
    select({{var2}})
```

`@@code3`

```{r}
library(dplyr)
df {{_fun1}}
    select({{var2}})
```


`@pre_challenge_code`

```{r}
library(dplyr)
df <- structure(
    list(
        x1 = c(10, 8, 13), 
        x2 = c(12, 5, 1), 
        x3 = c(2, 6, 4), 
        x4 = c(7, 15, 9)
    ), 
    .Names = c("x1", "x2", "x3", "x4"), 
    row.names = c(NA, 3L), class = "data.frame"
)
```

`@variables`

```{yaml}
var1:
  - 'df'
var2:
  - 'x1'
  - 'x2'
  - 'x3'
  - 'x4'
  - 'x1, x3'
  - 'x2, x4'
  - 'x1, x4'
fun1:
  - '%>%'
```
