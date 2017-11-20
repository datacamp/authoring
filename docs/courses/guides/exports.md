# Exports

For video exercises on **DataCamp**, there's a possibility to add several types of extra data -- also called **exports**. Adding them will enhance student's experience in the Learning interface. These exports are closely related to videos built with the **Slides Interface**.

However, with some extra **steps** you can also generate these exports for video exercises not using the **Slides Interface** -- also called traditional videos. The following steps are required for exports to work for traditional videos:

1. Your course needs to have video exercises for this to have any effect
2. Go to the **Settings** tab in the [Content Overview](../interface/content-overview.md) page
3. Scroll down to find the **Videos** section. In this section make sure the checkbox "Add traditional video to projector" is checked and hit "Update Settings"
4. At this point, it's best to do a manual build. The Teach App should automatically make a commit to your repository. This commit should add "projector_key" attributes to the video exercises that don't have a "projector_key" already

That's it, the traditional videos now have a representation in the projector database, meaning exports should work now.

## Export types

These are the exports that you can toggle in the Settings pane. Don't forget to hit "Update Settings" once you made changes to the toggles.

### Video

*This export is only relevant for new videos, built with the **Slides Interface**. Using it with** traditional videos** will have no effect.

Enable video export to convert the projector videos with slide decks to mp4 videos that can be downloaded by users. The url's that point to the exported videos are stored in the projector and reported in the build logs.

### Audio

*This step is a pre requirement to export **subtitles**.*

Enable audio export to extract the audio from videos. The url's that point to the exported audio files are stored in the projector and reported in the build logs.

### PDF

*This export is only relevant for new videos, built with the **Slides Interface**. Using it with **traditional videos** will have no effect.*

Enable pdf export to export the projector slides in pdf format. All individual slide decks are exported as well as each chapter with all slides combined. The url's that point to the exported slides are stored in the projector and reported in the build logs.

### Scripts

*This step is a pre requirement to export **subtitles**.*

The scripts export takes care of combining and exporting scripts in markdown files. There's a clear distinction between **traditional videos** and videos built with the **Slides Interface**:

- **New Videos**: the scripts should be attributes in the slide deck files. There's no extra requirements here, as the scripts will be generated from what's in these files.
- **Traditional Videos**: the scripts belonging to `VideoExercise` exercises of a chapter `X` should be added to the following file in the repository: `scripts/chapterX_script.md`. For example, scripts of video exercises in chapter 1 should be added to `scripts/chapter1_script.md`. The scripts can be added in the order that the video exercises appear in the chapter file, separated by `---`. For example:
    ```
    ---
    This is the first video of the chapter.

    I hope the topic isn't too hard.

    ---

    In this second video, we will learn how to ride a spaceship.

    ---

    In the final video of this chapter, let's look at what we learned.
    ```

When you build the course and new scripts like this are added, the **Teach App ** will make a new commit that automatically adds x attributes to the scripts, behind the `---` lines. You shouldn't worry too much about this, it's added to have a more robust mapping between `VideoExercise` exercises in the chapter files and parts of the script markdown.

This export also adds missing exercise keys in the script files, which are committed to the course repository.

### Subtitles

The subtitle export uses the exported audio and scripts to generate subtitles for the videos. The url's that point to the exported subtitles are stored in the projector and reported in the build logs. 

> #### info::Note
> Because this it depends on other exports, a second manual build might be necessary to trigger the subtitle export.






