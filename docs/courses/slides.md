# Slides

ou can create slides for your course using the Teach Editor. Each [VideoExercise](exercises/video-exercise.md) can have a slide deck associated with it. Using these tools, you can even time the slide deck to a DataCamp video.

## Getting started

To get started creating slides, the first step is to insert a new [VideoExercise](exercises/video-exercise.md) in the Teach Editor. When you do this, there are two possible flows:

- If you are editing a DataCamp course (that is a course which has a GitHub repository in the `datacamp` organization), a projector_key will be added to the chapter markdown automatically and a slide will be created for you. This could take a few seconds.
- If you are not editing a DataCamp course, the default field that will be added is `video_link`. If you want to use DataCamp's slide/video system instead of linking to an external video, you can remove that field. Instead, you can create a slide for this video by clicking on the **Create Slide** action in the **Tools** Menu. You can also find its icon in the icon bar.

Now that you created a slide, it's time to actually edit it. To do so you need to:
- Open **Slide Editing** mode in the drop down menu on the right-hand side of the icon bar.
- Give the system some time to start up.
- Select the slide you want to work on in the slides outline. These slides will be sorted in the order of occurrence in the course. They will be grouped by chapter.

## Slide deck header

The purpose of slide deck file is the same as chapters one with major difference in that it contains a YAML header and a list of slides instead a list of exercises.

The slides are listed in the slide deck file in the same way that exercises are listed in a chapter file.

The following fields can be set in the YAML header:

- **title**: the title of the slide deck. This will be shown in the title slide.
- **key**: the key of the slide deck, this is used to identify the slide and to link it with a VideoExercise.
- **video_link**: a list of links to the video (and, potentially, audio) files on S3:
  - **hls**: link to the HLS video (.m3u8 extension).
  - **mp4**: link to the MP4 video.
  - **mp3**: link to the MP3 file. If this is the only source you specify, an audio track will be played alongside the slide deck, instead of a video.
- **transformations**:
  - **scale**: scale the video by this factor
  - **translateX**: position of the video on the x-axis. 0 is the middle of the screen, 100 is the right.
  - **translateY**: position of the video on the y-axis. 0 is the bottom of the screen, 100 is the top.


At the moment, the best way to test out transformations on slides is to go back and forth between **Slide Editing** and **Slide Timing** mode in the editor. You edit the transformations in **Slide Editing** mode, but the preview there doesn't have a video. That's why you need to go to **Slide Timing** mode to check out the result.

### Slides

There are several types of slides that you can add (the same way you add exercises to chapters). Here's an overview of all of them:

- **TitleSlide**: typically the first slide of a slide deck. It contains the title of the slide and the course name.
- **FullSlide**: the most basic slide. It has a title and 1 big container for content underneath.
- **FullImageSlide**: a slide which has no title, only an image. It's filled in the most appropriate way automatically.
- **FullCodeSlide**: similar to **FullSlide**, but with a special option code_zoom, see below.
- **TwoColumns**: a slide containing of a title and two columns with content
- **TwoRows**: a slide containing of a title and two rows with content
- **TwoRowsTwoColumns**: a slide containing of a title and a grid of 2 by 2 with content
- **FinalSlide**: the typical "Let's practice" slide

Each slide can have following blocks:

- Title
- `script` block where you can write the narrative
- `part` blocks filled with markdown content. The amount of `part` tags depends of the slide type. For example, a `FullSlide` only has `part1`, while `TwoRowsTwoColumns` has `part1`, `part2`, `part3` and `part4`
- `citations` block where you list your citations like so:
    ```
    - First citation
    - Second citation
    - Third citation
    ```

The header of each slide holds the `type` of that slide and can two extra fields:

- `disable_transition`, which disables the transition to the slide if its value is `true`
- `center_content`, which centers all content in a slide if its value is `true`
- `code_zoom` (only for **FullCodeSlide**). It's value is a percentage (e.g. value 120 means the code is 20% bigger than normal)

### Slide editing

The first step of creating your videos for DataCamp, is creating the slides. You do this in the **Slide Editing** mode. The following screencast will show how to do that.

Note that the video might not be 100% up to date. For example, the usage of `slides_key` is deprecated and replaced by `projector_key`. However, the system automatically fills this in for you, so you shouldn't worry too much about that.

<iframe frameBorder="0" allowfullscreen width="640" height="360" src="//projector-prod.herokuapp.com/?auto_play=false&amp;video_hls=//videos.datacamp.com/transcoded/000_non-course_videos/screencasts/hls-slide_editing.master.m3u8"></iframe>

### Slide timing

After you're done with creating your slides, you can time them to videos. This is explained in the screen cast below.

<iframe frameBorder="0" allowfullscreen width="640" height="360" src="//projector-prod.herokuapp.com/?auto_play=false&amp;video_hls=//videos.datacamp.com/transcoded/000_non-course_videos/screencasts/hls-slide_timing.master.m3u8"></iframe>

### Previewing slides

Currently, there are 2 ways to preview the slides you're making:

1. In **Slide Editing** mode, there's a preview window that shows you the active slide deck. You can navigate through the preview by giving it focus and using the arrows, or by clicking on the arrow navigation. There's no video in the **Slide Editing** mode preview.
2. In **Slide Timing** mode, there's a preview window that shows you the active slide deck, with video. You can start the video by pressing the space bar if the **Slide Timer** window has focus, or clicking the play button.

It's currently not possible to have a preview of the video, created in Slide Editing and Slide Timing mode, in the Course Editing mode preview. Video exercises using the projector system won't render in the preview in Course Editing mode. They will work in the Campus App once the course is built successfully.