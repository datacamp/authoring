# Meta

```
Exercise <exercise_number> - Meta
```

This is the sheet where you put all the general information of spreadsheets. This is information
that can be described as key-value pairs (for example `title: Sheets course`). The information is
described in column `A` and column `B`, where `A` holds the keys (like `title`) and `B` holds the
values (like `Sheets course`). This might look something like this:

<br>

<iframe
  src="https://docs.google.com/spreadsheets/u/1/d/e/2PACX-1vRdin0SI-FS9SOGrvy1yOnbn5-vWjfI-_38Ea0mYa8-Etg8clafBsxXwTt6jZ4FM2g-Yru5Zys1LZtJ/pubhtml?gid=879287969&single=true"
  style="width:100%;height:385px;border:none"
></iframe>

<br>

Specifically, the following fields can be set:

* **title**: title of the exercise - plain text
* **assignment**: assignment of the exercise - markdown rendered text
* **instructions**: instructions of the exercise - markdown rendered text, for instructions we
  always use between 2-4 bullet points
* **hint**: hint of the exercise - markdown rendered text, for a hint we always use between 2-4
  bullet points
* **highlight**: specifies which parts of the sheet are highlighted when the user lands on the
  exercise - one range (e.g. `F5`, `F5:G6`, ...) or a list of ranges, separated by a semicolon
  (e.g. `F5;F5:G6`)
* **success_message**: success_message of the exercise. This will be shown when an exercises is
  completed.
* **type**: the type of the exercise. More on this in the [section about other
  exercises](../other_exercises.md). Defaults to `NormalExercise`.
* **data_selectors**: this is a field that gives you control over what data is preserved between
  exercises. As we mentioned before, not all data is preserved between exercises (that's what
  we need a Golden Copy for). More info on this will follow in the part about the [solution
  sheet](solution.md). The `data_selectors` field lets you control which data is preserved.
  The value should be a list of keywords, separated by a comma (`,`). E.g. `values, formulas`.
  The keywords are:

  * values: the raw values in each cell, no formulas
  * formulas: the formulas in each cell
  * numberFormat: the number format in each cell. This controls whether `0` is shown as `$0` or
    `0.00`, for example
  * pivotTables: all pivot tables in the sheet
  * charts: all charts in the sheet
  * styles: all style information in the sheet. This includes column widths, row widths, borders,
    and number format. It does __**not**__ include merging cells or conditional formatting. Note
    that including styles will cause the `highlight` field to be ignored. This keyword is a
    superset of `numberFormat`. You can use them both, but using only `styles` will have the
    same effect.

    If no `data_selectors` are set, the default is `values, formulas, numberFormat, pivotTables,
    charts`.
