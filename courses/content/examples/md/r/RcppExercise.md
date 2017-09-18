## First function - again

```yaml
type: RCppExercise 
lang: r 
xp: 100
skills: 1
```

Remember when you wrote the `answer` function that always returns `42`. Let's
do it again, but this time in a C++ file. 


`@instructions`

- include the Rcpp header
- declare that you use the Rcpp namespace. It is not strickly necessary for this example, but better get used to it anyway. 
- In case you don't remember, the function returns 42
- Add a special R comment to call the function once the C++ code is compiled

Rework the function so that it use a local variable `x` that is returned. 


`@hint`

- Add some useful hints


`@pre_exercise_code`

```{r}
library(Rcpp)
```

`@sample_code`

```{cpp}
#include <___>
using ___ ;

// [[Rcpp::export]]
int answer(){
    return ___ ;
}

// [[Rcpp::export]]
int answer2(){
    int x = ___
    return x ;
}


/*** R
    # call answer and check you get the right result
    ___ 
    
    # call answer2 and check you get the right result
*/

```

`@solution`

```{cpp}
#include <Rcpp.h>
using namespace Rcpp ;

// [[Rcpp::export]]
int answer(){
    return 42 ;
}

// [[Rcpp::export]]
int answer2(){
    return 42 ;
}

/*** R
    answer()  == 42
    answer2() == 42
    
*/
```

`@sct`
```{r}
# Add submission correctness tests.
```