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
one extra for the Golden Copy. This workbook source results in the following exercises:

<br>

<iframe
  src="https://spreadsheets.datacamp.com/courses/6/chapters/17/exercises/1"
  style="width:100%;height:700px;border:none"
></iframe>

## Meta
```
Exercise <exercise_number> - Meta
```

This is the sheet where you put all general information on spreadsheets. This is the sheet where
you put all the general information of spreadsheets in. This is information that can be described
as key-value pairs (for example `title: Sheets course`). The information is described in column `A`
and column `B`, where `A` holds the keys (like `title`) and `B` holds the values (like `Sheets 
course`). This might look something like this:

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
exercise - one range (e.g. `F5`, `F5:G6`, ...) or a list of ranges, separated by a semicolon (e.g.
`F5;F5:G6`)
* * **success_message**: success_message of the exercise
* **exact_match**: the exact_match of the exercise

> #### info::Note
> You may notice that for now, there's only one possible exercise type. There's no way to add video
> or multiple choice exercises yet. However, to be forward compatible you can do the following:
> - For video exercises:

## Sample



## Solution


## SCT

