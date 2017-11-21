> #### warning::Admin content
> Following content should only be visible to the DataCamp Content Developers and Admins

# Review mode

Next to taking challenges on challenges.datacamp.com, you can also review previously taken challenges. This is useful for content developers, but will also be a nice feature for students at some point, where they can review their work.


## Typical CD flow

- Browse through the `issues` table in the `challenges-replica` database.
- Figure out the `view_id` for an issue that somebody raised.
- Browse to `https://challenges.datacamp.com/review/<view_id>` (e.g. `1083988`)
- This shows a view, with the student's submission already pre-filled:

![review_first_screen](/images/challenges/review_first_view.png)

- You can hit Replay, to then simulate the "Check" action, and see the feedback the student got:

![review_second_screen](/images/challenges/review_second_view.png)

Hopefully this helps in better targeting challenge-related issues!
