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
Copy_. This is the data you'll be using throughout the exercise of that workbook. The golden copy is
the only sheet in your workbook source that will be copied fully to each student's workbook for that
exercise. This means that you can put your styling, number formatting, and so on in this sheet and
it will appear exactly as that in a sheet called 'Sheet 1' for each student that starts the
exercise.

The other sheets in the workbook source all start with 'Exercise ...'. We call these sheets the
exercise sheets. Later in the sections about exercises, we'll talk about which data is preserved
from your exercise sheets. You'll see that the Golden Copy sheet is the only sheet that retains all
data, including styling and such.

> #### info::Note
>
> Currently you're limited to using one sheet through the exercises of spreadsheet courses.
> There are plans to expand this to one 'editable' sheet and N sheets where you can put source data.

## Editing a workbook

Workbooks are edited through the spreadsheets interface itself. We do this through something called
the **workbook source**, which contains all information related to a specific workbook and its
exercises. You can find the workbook source on the right-hand side in the _chapter authoring
interface_.

In the workbook source, you'll find the **Golden copy** sheet as mentioned before. You can simply
edit this sheet, and all of it's content will be copied a sheet named 'Sheet 1' of the student's
worksheet when they start an exercise of this workbook.

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

