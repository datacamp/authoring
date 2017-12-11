# Slides

Each [VideoExercise](exercises/video-exercise.md) can have a slide deck associated with it. You can create slides for your course using the Teach Editor.

## Getting Started

The first step in creating slides is to insert a new [VideoExercise](exercises/video-exercise.md) in the Teach Editor. Two things can happen when you do this:

1. If you are editing a DataCamp course (i.e., a course with a GitHub repository in the `datacamp` organization), a `projector_key` will be added to the chapter's Markdown file automatically and a slide will be created for you. This may take a few seconds.
2. If you are not editing a DataCamp course, a `video_link` field will be added to your Markdown file. If you want to use DataCamp's slide and video system instead of linking to an external video, you can remove that field an create a slide for this video by clicking on the **Create Slide** action in the **Tools** Menu. (You can also find its icon in the icon bar.)

Once you have created a slide, you need to edit it:

- Open **Slide Editing** mode in the dropdown menu on the right-hand side of the icon bar.
- Give the system a few seconds to start up.
- Select the slide you want to work on in the slides outline. These slides will be sorted in the order of occurrence in the course and grouped by chapter.

## Slide Deck Header

While a chapter file contains a YAML header and a list of exercises, a slide deck file contains a YAML header and a list of slides.
The following fields can be set in the YAML header:

- `title`: the title of the slide deck. This will be shown in the title slide.
- `key`: the key of the slide deck. This is used to identify the slide and to link it with a `VideoExercise`.
- `video_link`: a list of links to the video (and, potentially, audio) files on S3:
  - `hls`: link to the HLS video (.m3u8 extension).
  - `mp4`: link to the MP4 video.
  - `mp3`: link to the MP3 file. If this is the only source you specify, an audio track will be played alongside the slide deck instead of a video.
- `transformations`:
  - `scale`: scale the video by this factor
  - `translateX`: position of the video on the x-axis. 0 is the middle of the screen, 100 is the right.
  - `translateY`: position of the video on the y-axis. 0 is the bottom of the screen, 100 is the top.

The best way to test transformations on slides is to go back and forth between **Slide Editing** and **Slide Timing** mode in the editor. (You edit the transformations in **Slide Editing** mode, but the preview there doesn't have a video, so you need to go to **Slide Timing** mode to check the result.)

### Slides

You can add several types of slides to your course:

- `TitleSlide`: typically the first slide of a slide deck. It contains the title of the slide and the course name.
- `FullSlide`: the most basic slide. It has a title and one big container for content underneath.
- `FullImageSlide`: a slide which has no title, only an image. It's filled in the most appropriate way automatically.
- `FullCodeSlide`: similar to `FullSlide`, but with a special option `code_zoom` described below.
- `TwoColumns`: a slide containing a title and two columns for content.
- `TwoRows`: a slide containing a title and two rows for content.
- `TwoRowsTwoColumns`: a slide containing a title and a 2x2 grid for content.
- `FinalSlide`: the typical "Let's practice" slide.

Each slide can have the following blocks:

- a `title` block (self-explanatory).
- a `script` block where you write the narrative.
- `part` blocks filled with Markdown content. The number of `part` tags depends of the slide type: a `FullSlide` only has `part1`, while `TwoRowsTwoColumns` has `part1`, `part2`, `part3` and `part4`.
- a `citations` block where you list your citations like so:
    ```
    - First citation
    - Second citation
    - Third citation
    ```

The header of each slide holds the `type` of that slide and can have two extra fields:

- `disable_transition`: disables the transition to the slide if its value is `true`.
- `center_content`: centers all content in a slide if its value is `true`.
- `code_zoom` (only for `FullCodeSlide`): a percentage scaling value for enlarging code content (e.g., `120` means "20% bigger than normal").

### Previewing Slides

You can preview your slides in two ways:

1. **Slide Editing** mode: a preview window shows you the active slide deck. You can navigate the preview by giving it focus and using the arrows, or by clicking on the arrow navigation. There's no video in **Slide Editing** mode preview.
2. **Slide Timing** mode: a preview window shows you the active slide deck with video. You can start the video by pressing the space bar if the **Slide Timer** window has focus, or click the play button.

Video exercises using the projector system won't render in **Course Editing** mode preview.
