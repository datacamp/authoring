# Exports

Several types of extra data can be added to video exercises on DataCamp. These so-called **exports** are closely related to videos built with the Slides Interface, but with some extra steps you can also generate exports for video exercises that don't use that interface (also called "traditional videos"). The following steps are required for exports to work for traditional videos:

1. Your course needs to have video exercises for this to have any effect.
2. Go to the "Settings" tab in the [Content Overview](/authoring-tools/content-overview.md) page.
3. Scroll down to find the "Videos" section and make sure the checkbox "Add traditional video to projector" is checked.
4. Click "Update Settings".
5. Do a manual build. The Teach App should automatically make a commit to your repository that adds `projector_key` attributes to the video exercises that don't have it already.

That's it: the traditional videos are now represented in the projector database, so exports should now work.

## Export types

These are the exports that you can toggle in the Settings pane. Don't forget to hit "Update Settings" after you make changes.

### Video

*This export is only relevant for new videos built with the Slides Interface. Using it with traditional videos will have no effect.*

Enable video export to convert the projector videos with slide decks to MP4 videos that can be downloaded by users. The URLs that point to the exported videos are stored in the projector and reported in the build logs.

### Audio

*This step is a pre requirement to export subtitles.*

Enable audio export to extract the audio from videos. The URLs that point to the exported audio files are stored in the projector and reported in the build logs.

### PDF

*This export is only relevant for new videos, built with the Slides Interface. Using it with traditional videos will have no effect.*

Enable PDF export to export the projector slides in PDF format. All individual slide decks are exported as well as each chapter with all slides combined. The URLs that point to the exported slides are stored in the projector and reported in the build logs.

### Scripts

*This step is a pre requirement to export subtitles.*

The scripts export takes care of combining and exporting scripts in Markdown files. Traditional videos and videos built with the Slides Interface behave differently:

- New videos: the scripts should be attributes in the slide deck files. There are no extra requirements here, as the scripts will be generated from those files' contents.
- Traditional videos: the scripts belonging to `VideoExercise` exercises of a chapter `X` should be added to the file `scripts/chapterX_script.md` in the repository. For example, scripts of video exercises in chapter 1 should be added to `scripts/chapter1_script.md`. The scripts can be added in the order that the video exercises appear in the chapter file, separated by `---` as shown below:
    ```
    ---
    This is the first video of the chapter.

    I hope the topic isn't too hard.

    ---

    In this second video, we will learn how to ride a spaceship.

    ---

    In the final video of this chapter, let's look at what we learned.
    ```

When you build the course and new scripts like this are added, the Teach App will make a new commit that automatically adds video exercise keys to the scripts after the `---` lines as shown below:

    --- video_exercise_key: abcdef123

Don't worry too much about these keys: they are added to create a more robust mapping between `VideoExercise` exercises in the chapter files and parts of the Markdown script.

This export also adds missing exercise keys in the script files, which are committed to the course repository.

### Subtitles

The subtitle export uses the exported audio and scripts to generate subtitles for the videos. The URLs that point to the exported subtitles are stored in the projector and reported in the build logs.

> #### info::Note
> Because this it depends on other exports, a second manual build might be necessary to trigger the subtitle export.




