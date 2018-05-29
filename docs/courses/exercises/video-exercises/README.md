# Video Exercise

![video-exercise](/images/VideoExercise.png)

A `VideoExercise` features an instructional video in which the instructor explains concepts with slides in the background. Video files are uploaded to Vimeo and the "embed" link is added to the exercise.  Most premium courses start with a `VideoExercise`.

## example

This minimal chapter contains a single short video exercise:

    ---
    title       : This is chapter with video exercise
    description : Yes! This chapter contains a video!
    ---

    ## Video Exercise

    ```yaml
    type: VideoExercise 
    lang: r
    xp: 50 
    video_link: //player.vimeo.com/video/160339466
    video_hls: //videos.datacamp.com/transcoded/672_intermediate_r/v2/hls-ch1_1.master.m3u8
    ```

See also:
- [Creating slides and videos](/courses/exercises/video-exercises/creating-slides.md)
- [Exercises](/courses/exercises/README.md)
- [Experience Points](/courses/exercises/technical-details/xp.md)
