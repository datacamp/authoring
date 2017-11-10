## Test select

```yaml
type: BlanksChallenge 
key: 311ctWBt9Xp3r
```

`@context`

Following is a preview of the data frame `df`: 

```
    y1   y2    y3   y4
1 8.04 9.14  7.46 6.58
2 6.95 8.14  6.77 5.76
3 7.58 8.74 12.74 7.71
```

`@code`

```{r}
library(dplyr)
{{_fun1}}(df, {{var1}})
```

`@pre_challenge_code`

```{r}
library(dplyr)
df <- structure(
  list(
    y1 = c(8.04, 6.95, 7.58), y2 = c(9.14, 8.14, 8.74), 
    y3 = c(7.46, 6.77, 12.74), y4 = c(6.58, 5.76, 7.71)
  ), 
  .Names = c("y1", "y2", "y3", "y4"), 
  row.names = c(NA, 3L), class = "data.frame"
)
```

`@variables`

```{yaml}
var1:
  - 'y1'
  - 'y2'
  - 'y3'
  - 'y4'
  - 'y1, y3'
  - 'y2, y4'
  - 'y1, y4'
fun1:
  - 'select'
```

`@distractors`

```{yaml}
fun1:
  - '{{fun1}}'
  - 'mutate'
  - 'arrange'
  - 'filter'
  - 'summarise'
```
