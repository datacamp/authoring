# Video Exercise

![video-exercise](/images/VideoExercise.png)

`VideoExercise` features an instructional video. The finished video shows the instructor explaining concepts with slides that are rendered in the background. The video files are uploaded to Vimeo and the embed link is added to the video exercise.

It is usual to start a course with a `VideoExercise`.  
`VideoExercise` is typically only part of premium courses that require a subscription.

## Complete example

Following is a complete example of a chapter containing the `VideoExercise`

{% codetabs name="Version 2", type="text" -%}
---
title       : This is chapter with video exercise
description : Yes! This chapter contains a video!
---

## Video Exercise

```yaml
type: VideoExercise 
lang: r
xp: 50 
skills: 1 
video_link: //player.vimeo.com/video/160339466
video_hls: //videos.datacamp.com/transcoded/672_intermediate_r/v2/hls-ch1_1.master.m3u8
```

{%- language name="Version 1", type="text" -%}
---
title       : This is chapter with video exercise
description : Yes! This chapter contains a video!

--- type:VideoExercise lang:r xp:50 skills:1

## Video Exercise

*** =video_link

//player.vimeo.com/video/160339466

*** =video_hls

//videos.datacamp.com/transcoded/672_intermediate_r/v2/hls-ch1_1.master.m3u8

{% endcodetabs %}

[Reccomended read: Creating slides and videos](../../slides.md)

> #### info::NOTE
> Detailed information about blocks and their usage can be found on [Exercise Blocks page](./README.md#exercise-blocks)  
> Detailed information about `xp` and `skills` can be found in [Gamification page](../../gamification.md)