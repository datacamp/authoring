# Meta

```
Exercise <exercise_number> - Meta
```

This is the sheet where you put all the general information of spreadsheets in. This is information
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

