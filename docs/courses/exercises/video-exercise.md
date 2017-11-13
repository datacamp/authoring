# Video Exercise

![video-exercise](/images/VideoExercise.png)

`VideoExercise` features an instructional video. The finished video shows the instructor explaining concepts with slides that are rendered in the background. The video files are uploaded to Vimeo and the embed link is added to the video exercise.

It is usual to start a course with a `VideoExercise`.  
`VideoExercise` is typically only part of premium courses that require a subscription.

## Authoring

{% codetabs name="Version 2", type="text" -%}

## Video Exercise

```yaml
type: VideoExercise 
lang: r
xp: 50 
skills: 1 
key: 9af3e6d86523573ebe761f674cb92f849b61898e
video_link: //player.vimeo.com/video/160339466
video_hls: //videos.datacamp.com/transcoded/672_intermediate_r/v2/hls-ch1_1.master.m3u8
```

{%- language name="Version 1", type="text" -%}

--- type:VideoExercise lang:r xp:50 skills:1  key:9af3e6d86523573ebe761f674cb92f849b61898e

## Video Exercise

*** =video_link

//player.vimeo.com/video/160339466

*** =video_hls

//videos.datacamp.com/transcoded/672_intermediate_r/v2/hls-ch1_1.master.m3u8

{% endcodetabs %}

> #### info::Note
> It's always reccomended to use the `Version 2` of the authoring format.