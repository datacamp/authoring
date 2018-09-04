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
  though. The data that will be recorded will be controlled by the previously mentioned
  [`data_selectors` field in the Meta sheet](meta.md). By default, the following data is recorded:

  * differences in values
  * differences in formulas
  * differences in number format
  * pivot tables
  * charts

Note that `styles` can also be recorded, but only if you put it in the `data_selectors` attribute.
Some things always have to be in the golden copy, for now. Some examples:

- Conditional formatting
- Merging cells
- Dropdown menus in cells

To change these, you will need change the **Golden Copy** and hit **Reset Workbook** in the preview
to see the changes.

This is necessary to do optimzations that improve user experience going through spreadsheet
exercises.
