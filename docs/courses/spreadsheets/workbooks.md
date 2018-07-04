# Workbooks

Workbooks are the building blocks of a chapter. Each chapter consists of one or more workbooks. This
becomes obvious from the _chapter authoring page_:

<figure>
  <img src="images/chapter_page_workbook.png" alt="Chapter authoring page with workbook">
  <figcaption><em>Fig 1: Chapter authoring page with workbook</em></figcaption>
</figure>

However obvious this is from an author's perspective, this is less obvious for a student. For
students the obvious subdivision is course > chapters > exercises. There's a few reasons why we
chose to use workbooks under the hood though:

* As an author, this makes you think of groups of exercises as steps to solve certain problems on a
  particular dataset.
* From a technical perspective, this allows us to improve the UX when transitioning between
  exercises in the same workbook. Since each exercise's sample data is a simple mutation of the
  workbook's data, the transition between these exercises feels smooth and the system doesn't have
  to reload a new workbook.

Looking at _Fig 1_, you can see that the authoring interface for a workbook is divided in a left-
and right-hand part.

* The left-hand side allows you to navigate between this chapter's workbooks and create new
  workbooks for this chapter. Navigate between workbooks by simply clicking on them in the left-hand
  side.
* The right-hand side is where you actually edit your workbook. The workbook and its exercises is
  fully represented by a spreadsheet with multiple sheets. We call this spreadsheet the **workbook
  source**.

## Creating a workbook

Looking at the interface, you might already guess how you'd create a new workbook. You can simply
click on 'Add New Workbook' on the left-hand side. This will create a new workbook with one exercise
scaffold in it.

> #### warning::Warning
>
> Unfortunately there's currently no loader in the UI that shows the system is creating a
> new workbook, however that doesn't mean the system isn't working. Before hitting the button again,
> it's best to wait a few seconds and your new workbook should show up.

## Golden copy

In the scaffold **workbook source**, you'll see a few sheets. The first sheet is called _Golden
Copy_. This is the data you'll be using throughout the exercise of that workbook. The golden copy
will be copied fully to each student's workbook copy for that exercise. This means that you can put
your styling, number formatting, and so on in this sheet and it will appear exactly as that in a
sheet called 'Sheet1' for each student that starts the exercise.

Sheets in the workbook source that start with 'Exercise ...' are called the exercise sheets. Later
in the sections about exercises, we'll talk about which data is preserved from your exercise sheets.
You'll see that the Golden Copy sheet, in contrast to exercise sheets, retains all data, including
styling and such. The reason we use this technique is because it enabled us to implement a better
user experience in transitioning between exercises in the same workbook, using the same Golden Copy.

Other than the Golden Copy and exercise sheets, you can add read-only sheets to your workbook
source. These can contain source data, that can be used throughout the exercises of a workbook.

If you delete the Golden Copy sheet and have (a) read-only sheet(s), those will be the only ones
that are shown to the student. This can for example be useful when the student needs to create
a new pivot table in an exercise. The student starts out with only a read-only sheet and creates
a pivot table from that. The correctness checker for SCTs (`check_pivot`) will automatically
check the newly created pivot table.

If you delete the Golden Copy sheet and have no read-only sheets, the student will see a blank
sheet called 'Sheet1'. This because a workbook can not be completely empty, without sheets.

## Editing a workbook

Workbooks are edited through the spreadsheets interface itself. We do this through something called
the **workbook source**, which contains all information related to a specific workbook and its
exercises. You can find the workbook source on the right-hand side in the _chapter authoring
interface_.

In the workbook source, you'll find the **Golden copy** sheet as mentioned before. You can simply
edit this sheet, and all of it's content will be copied a sheet named 'Sheet 1' of the student's
worksheet when they start an exercise of this workbook.

Between the Golden Copy and the first exercise sheet, you can add an arbitrary amount of read-only
sheets. These will be copied to the user's workbook copy when they open an exercise. Remember that
these sheets can not change througout the exercises of the workbook.

We'll talk about editing exercise sheets in the section about exercises.

Each time you made changes to the **workbook source**, be sure to hit the **Build** button
afterwards. This goes through your workbook source and (re)builds it into its exercises. Once the
build is ready, you can preview it hitting the **Preview** button. This will open a new window to
the rendered chapter you're currently editing. It wil automatically refresh if you build again and
things have changed.

## Deleting a workbook

It is currently not possible to delete a workbook. However, keeping it empty will make it not show
up for the students. If you want to remove it for general housekeeping, reach out to
[vincent@datacamp.com](mailto:vincent@datacamp.com) for now.
