# General

Exercises are built inside the **workbook source** of a workbook. Each exercise consists of 4
separate sheets: **Meta**, **Sample**, **Solution** and **SCT**. More details on each of these is
provided in this section.

The exercise sheets must follow a strict naming convention, sensitive to caps and spaces:

```
Exercise <exercise_number> - <Meta|Sample|Solution|SCT>
```

As an example, here is a workbook source that has 2 exercises:

<br>

<iframe
  src="https://docs.google.com/spreadsheets/d/e/2PACX-1vRdin0SI-FS9SOGrvy1yOnbn5-vWjfI-_38Ea0mYa8-Etg8clafBsxXwTt6jZ4FM2g-Yru5Zys1LZtJ/pubhtml?widget=true&amp;headers=false"
  style="width:100%;height:385px;border:none"
></iframe>

<br>

As you can see, a workbook with 2 exercises has 9 sheets associated with it: 4 for each exercise and
one extra for the Golden Copy. This workbook source results in the
[this exercise](https://spreadsheets.datacamp.com/courses/6/chapters/17/exercises/1).

<br>

## Meta

```
Exercise <exercise_number> - Meta
```

This is the sheet where you put all general information on spreadsheets. This is the sheet where
you put all the general information of spreadsheets in. This is information that can be described
as key-value pairs (for example `title: Sheets course`). The information is described in column `A`
and column `B`, where `A` holds the keys (like `title`) and `B` holds the values (like
`Sheets course`). This might look something like this:

<br>

<iframe
  src="https://docs.google.com/spreadsheets/u/1/d/e/2PACX-1vRdin0SI-FS9SOGrvy1yOnbn5-vWjfI-_38Ea0mYa8-Etg8clafBsxXwTt6jZ4FM2g-Yru5Zys1LZtJ/pubhtml?gid=879287969&single=true"
  style="width:100%;height:385px;border:none"
></iframe>

<br>

Specifically, the following fields can be set:

* **title**: title of the exercise - plain text
* **assignment**: assignment of the exercise -
  [markdown](https://daringfireball.net/projects/markdown/) rendered text
* **instructions**: instructions of the exercise - markdown renderd text, for instructions we
  always use between 2-4 bullet points
* **hint**: hint of the exercise - markdown renderd text, for a hint we always use between 2-4
  bullet points
* **highlight**: specifies which parts of the sheet are highlighted when the user lands on the
  exercise - one range (e.g. `F5`, `F5:G6`, ...) or a list of ranges, separated by a semicolon
  (e.g. `F5;F5:G6`)
* **success_message**: success_message of the exercise. This will be shown when an exercises is
  completed.
* **exact_match**: this field can only be `TRUE` or `FALSE`, and defaults to `FALSE`. It's only
  important when you want users to use the exact same number format in their solution.

#### Exercise Types

You may notice that for now, there's only one possible exercise type. There's no way to add video
or multiple choice exercises yet. However, to be forward compatible you can do the following:

* **Video exercises**: in the meta sheet, add a field `type` with value `VideoExercise`. You can use
  the `title` field described above as well. You can then create videos using the usual video
  creation process on DataCamp, using the Teach Editor. When you're done, you'll need the
  `projector_key` of the video you created. You can add this as a field in the meta sheet as well.
  This means your meta sheet for a video exercise will have three fields: `type`, `title` and
  `projector_key`. There is no sample, solution or SCT sheet for video exercises.

* **Multiple choice exercises**: in the meta sheet, add a field `type` with value
  `MultipleChoiceExercise`. You can use the `title`, `assignment`, `hint` and `success_message`
  field described above as well. Two extra fields should be added as well: `options` and `feedback`.
  `options` is a markdown list of choices that the user will have to choose from. The correct option
  is between square brackets (`[`). `feedback` is a list of the same length with feedback messages
  for each of the option. An example for `options` would be:

      - The answer is this
      - No, the answer is this
      - [No, but really... this is the answer]

  The corresponding `feedback` could be:

      - That's not quite right
      - Not really
      - Correct!

  This means your meta sheet for a multiple choice exercise can have up until 7 fields: `type`,
  `title`, `assignment`, `hint`, `success_message`, `options` and `feedback`. There is no sample,
  solution or SCT sheet for multiple choice exercises.

## Sample

```
Exercise <exercise_number> - Sample
```

This is the sheet where you put the sample data of the exercise. This is the first content a user
will see in the sheet. It should contain all spreadsheet data that is needed for the user to get
started. This might look something like this:

<br>

<iframe
  src="https://docs.google.com/spreadsheets/d/e/2PACX-1vRi2lqbMZa5jjQgCcSNjyvDWg8v-NYuQ2cj9Vut-0PbUc2an2BIDk-q6R53f6zzAaFquH_MYV-Y2aKp/pubhtml?gid=816697837&single=true"
  style="width:100%;height:385px;border:none"
></iframe>

<br>

Please note that the sample data of an exercise should be a small mutation on the sample data of the
previous exercise. As a consequence, it should also be a small mutation on the data in the Golden
Copy. This is a good time to stress which date is recorded in the Golden Copy versus which data is
recorded in sample/solution data of exercises.

* **Golden Copy**: all data is recorded. The user will see this sheet as you see it.
* **Sample/Solution data**: the content in the sample or solution sheets is _serialized_. This is a
  technical term, and the exact meaning is not really important. There is an important consequence
  though. The only data that will be recorded from the sample or solution sheets is:

  * differences in values
  * differences in formulas
  * differences in number format

This means that font or border styles, for example, need to be in the **Golden Copy** for the user
to be able to see it. If you change the style in a sample or solution sheet, and it's not reflected
in the **Golden Copy**, the user won't see a difference in style.

## Solution

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

The same remarks we made about sample data apply here, meaning the solution data sheet only records
differences in values, formulas and number format.

## SCT

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

* All SCT  functions (unless defined otherwise in the specific function's documentation) will
  compare a value in the user's sheet with values in the solution. In our example, the value of the
  user in `F2` is compared with the value in that cell in the solution.
* SCT functions can have arguments, but a lot of them can be used without any arguments. If there
  are no arguments, you are not required to use parentheses: `check_value` or `check_value()` are
  equivalent.
