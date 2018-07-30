# SCT

```
Exercise <exercise_number> - SCT
```

The SCT (Submission Correctness Test) sheet holds all information necessary to test a solution to an
exercise. We developed a designated language in order to express what you want to test for each
exercise. If you've built R or Python courses for DataCamp before, you might recognize elements from
`testwhat` or `pythonwhat` in this language. There's a whole section on how to write SCTs, but
here's an example of how a simple SCT could look:

<iframe
  src="https://docs.google.com/spreadsheets/d/e/2PACX-1vRi2lqbMZa5jjQgCcSNjyvDWg8v-NYuQ2cj9Vut-0PbUc2an2BIDk-q6R53f6zzAaFquH_MYV-Y2aKp/pubhtml?gid=790829783&single=true"
  style="width:100%;height:385px;border:none"
></iframe>

A few things you can already notice here are:

* An SCT is defined in a certain cell. This means the check will be done on this cell in the user's
  solution. Specifically in our example, the value in `F2` will be checked.
* An SCT starts with a question mark `? ...`. If there are multiple SCTS in a cell, they all start
  on a separate line and each line starts with `?`. Note that one SCT can cover multiple lines. A
  more complex example would be:

      ? check_formula(
          suggestion="Better check the instructions again"
        )
      ? check_value

* All SCT functions (unless defined otherwise in the specific function's documentation) will
  compare a value in the user's sheet with values in the solution. In our example, the value of the
  user in `F2` is compared with the value in that cell in the solution.
* SCT functions can have arguments, but a lot of them can be used without any arguments. If there
  are no arguments, you are not required to use parentheses: `check_value` or `check_value()` are
  equivalent.

## SCT functions

Each SCT function can be used with zero or more arguments. There's two arguments that can always be
used:

* `message`: overwrite the generated feedback message. This message will be shown to the user on
  mistake.
* `suggestion`: append the generated feedback message. This message will be shown in combination
  with the generated feedback message.

Note that when using arguments, the SCT system requires you to used named arguments. So the
following will never result in a working SCT:

```
? check_value("A better feedback message")
```

Instead, always use named variables:

```
? check_value(message = "A better feedback message")
```

If there are multiple arguments, you can separate them by a comma (`,`).

### check_value

```
check_value(
  message = string,
  suggestion = string
)
```

Compares the calculated value at this cell with what's defined in the solution. There will be a
margin of error that's allowed for numeric values.

Examples:

```
? check_value
```

```
? check_value(
  message = "This is a feedback_message"
)
```

```
? check_value(suggestion="Have you tried to do it differently?")
```

### check_formula

```
check_formula(
  message = string,
  suggestion = string
)
```

Compares the formula of the user in this cell with what's defined in the solution. The formula will
be normalized, meaning capitalization and spaces won't matter.

Examples:

```
? check_formula
```

```
? check_formula(
  suggestion = "Read the instructions again."
)
```

### check_regex

```
check_regex(
  pattern = string,
  message = string,
  suggestion = string
)
```

Checks a [regular expression](https://en.wikipedia.org/wiki/Regular_expression) against the user's
content in a cell. The non-calculated value will be compared with the regex. Where using Javascript
flavoured regexes. [This](https://regex101.com/) is a useful tool to test a regex.

Since you're defining the regex in a string, you need to use double backslashes for regex-specific
characters. E.g. `"\\s"` to match spaces. Make sure you feel comfortable using regexes when using
this.

**Note:** for this SCT, the solution is not used

Example:

```
? check_regex(
  pattern = "1\\.1\\s*-\\s*1",
  message = "Please subtract one from `1.1`."
)
```

### check_function

```
check_function(
  function = string,
  message = string,
  suggestion = string
)
```

Checks whether the user used a certain function. The functions are normalized, so capitalization is
not an issue. A more tailored feedback message will be used automatically, so this function can
often be used without any specific `message` or `suggestion`.

**Note:** for this SCT, the solution is not used

Example:

```
? check_function(function = "SUM")
```

### check_operator

```
check_operator(
  operator = string,
  message = string,
  suggestion = string
)
```

Checks whether the user used a certain operator. A more tailored feedback message will be used
automatically, so this function can often be used without any specific `message` or `suggestion`.

**Note:** for this SCT, the solution is not used

Example:

```
? check_operator(operator = "+")
```
### check_reference

```
check_reference(
  reference = string,
  message = string,
  suggestion = string
)
```

Checks whether the user used a certain reference in his formula. The reference could be used by
itself or nested inside a function. A tailored feedback message will be generated automatically, so
this function can often be used without any specific `message` or `suggestion`.


**Note:** for this SCT, the solution is not used. However, this function can often be replaced by
the more convenient `check_references` or `check_absolute_references`, which **do** look at the
solution.

Examples:

```
? check_reference(reference = "B3")
```

```
? check_reference(reference = "$A$27")
```


### check_references

```
check_references(
  message = string,
  suggestion = string
)
```

Similarly to `check_reference`, check whether the correct references are used in a cell. However,
this function will compare the user's input to the solution. It will check whether all references
that are used in the solution, are also used in the user's input. Does not match absolute
references. It can often be used without arguments.

Example:

```
? check_references
```


### check_absolute_references

```
check_absolute_references(
  message = string,
  suggestion = string
)
```

Does exactly the same as `check_references`, but for absolute references.

Example:

```
? check_absolute_references
```

### check_pivot

```
check_pivot(
  message = string,
  suggestion = string
)
```

Checks whether the pivot table defined by the user is the same as the one in the solution.
The system tries to do smart checks so you normally don't have to use this SCT with arguments.
It will generate a detailed feedback message automatically. `check_pivot` should be defined
on the address of the upper-left corner of the pivot table in the solution.

To handle newly created pivot tables (i.e. not in 'Sheet1'), `check_pivot` will look through
all sheets to find the first sheet that contains a pivot table and does the checks on that
sheet.

Example:

```
? check_pivot
```

### check_chart

```
check_chart(
  message = string,
  suggestion = string
)
```

This function is still under development, but you can already use it to do a simple check
on whether a chart in the solution is the same as the one the user defined. The message
will be very simple, but you'll have the possiblitiy to show some debugging information.

Example:

```
? check_chart
```


### check_correct

```
check_correct(
  check = SCT,
  diagnose = SCT
)
```

This is the only **meta** SCT function. `check_correct` accepts 2 arguments: `check` and `diagnose`
and both of them are SCTs themselves.

The function will first check whether the SCT in `check` passes. If it passes, the SCT in `diagnose`
is never executed and the SCT passes. If `check` fails, `diagnose` is ran and will generally give
the user better feedback messages using this SCT.

`check_correct` is very useful in situations where you want to make a forgiving SCT, where you first
check a value and only if that value is not correct, will run more specific SCTs. You'll often see
the `check` being a simple `check_value` and the diagnose having functions like `check_function`.
This way we accept students arriving to the correct solution, without being obliged to use the exact
same method as we expect them to do.

It's worth nothing here that `diagnose` often contains multiple SCT functions. If that's the case,
we can group them by putting them between curly brackets (`{...}`) and splitting them with
semicolons: `;`.

Examples:

```
? check_correct(
  check = check_value,
  diagnose = {
    check_references;
    check_function(function = "SUM");
  }
)
```

```
? check_correct(
  check = check_value,
  diagnose = {
    check_operator(operator = "/");
    check_references;
    check_absolute_references;
  }
)
```
