# Video Exercises

You may notice that for now, there's only one possible exercise type. There's no way to add video
or multiple choice exercises yet. However, to be forward compatible you can do the following for
video exercises:

For the video exercise, add a Meta sheet and add a field `type` with value `VideoExercise`. You can
also use the regular `title` field described [here](./meta.md). You can then create videos using the
[usual video creation process](../exercises/slides.md), using the Teach Editor. When you're done,
you'll need the `projector_key` of the video you created. You can add this as a field in the meta
sheet as well. This means your meta sheet for a video exercise will have three fields: `type`,
`title` and `projector_key`. There is no sample, solution or SCT sheet for video exercises.
