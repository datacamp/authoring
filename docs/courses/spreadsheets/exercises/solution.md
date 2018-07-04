# Solution

```
Exercise <exercise_number> - Solution
```

This is the sheet where you put the solution data of the exercise. This is the model solution of an
exercises. It's the data that is shown when a user asks for the solution to an exercise. It might
look something like this:

<br>

<iframe
  src="https://docs.google.com/spreadsheets/d/e/2PACX-1vRi2lqbMZa5jjQgCcSNjyvDWg8v-NYuQ2cj9Vut-0PbUc2an2BIDk-q6R53f6zzAaFquH_MYV-Y2aKp/pubhtml?gid=896029687&single=true"
  style="width:100%;height:385px;border:none"
></iframe>

<br>

Please note that the solution data of an exercise should be a small mutation on the sample data.
As a consequence, it should also be a small mutation on the data in the Golden Copy.

This is a good time to explain which date is recorded in the Golden Copy versus which data is
recorded in solution/sample data of exercises.

* **Golden Copy**: all data is recorded. The user will see this sheet as you see it.
* **Solution/Sample data**: the content in the sample or solution sheets is _serialized_. This is a
  technical term, and the exact meaning is not really important. There is an important consequence
  though. The only data that will be recorded from the sample or solution sheets is:

  * differences in values
  * differences in formulas
  * differences in number format
  * pivot tables
  * charts

This means that font or border styles, for example, need to be in the **Golden Copy** for the user
to be able to see it. If you change the style in a sample or solution sheet, and it's not reflected
in the **Golden Copy**, the user won't see a difference in style.

This is necessary to do optimzations that improve user experience going through spreadsheet
exercises.
