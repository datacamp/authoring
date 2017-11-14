## RcppExercise with Files

This is an Rcpp exercise that can be run as a `NormalExercise` that takes advantage of the File Browser support.

```yaml
type: RcppExercise
xp: 100
```

`@sample_code`

`@@script.cpp`

```{cpp open = TRUE}
#include <Rcpp.h>

// [[Rcpp::export]]
int fibonacci(const int x) {
  if (x == 0) return(0);
  if (x == 1) return(1);
  return ___;
}

/*** R
fibonacci(___)
*/
```

`@solution`


`@@script.cpp`

```{cpp}
#include <Rcpp.h>

// [[Rcpp::export]]
int fibonacci(const int x) {
  if (x == 0) return(0);
  if (x == 1) return(1);
  return fibonacci(x - 1) + fibonacci(x - 2);
}

/*** R
fibonacci(10)
*/
```
