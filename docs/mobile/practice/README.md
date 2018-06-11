# Mobile Practice

## Authoring

Mobile practice pools share an authoring format with [desktop
challenges](/challenges/README.md). Therefore you can use the online DataCamp
editor to edit mobile practice pools (which is not the case for mobile
courses). For more information about using the teach editor to author
challenge/practice exercises, see the [desktop challenges
documentation](/challenges/README.md).

The only material difference is that you should use the "mobile-preview" pane to
see how a particular exercise will render in the mobile app. Note that you will
need to manually size the pane to a width consistent with the width of a mobile
device.

## Deploying

1. Make sure that the `pool.yml` file in your pool repository has a
   `mobile-pool-key` entry. Randomly generate a UUID for this if none exists
   already.
2. In the `mobile-content` repository, add an entry for the pool.

   ```yaml
   # Writing Functions in R
   - key: 3c3088e8-27f4-49d0-b5a0-492b1d90059a
     status: LIVE
     isPremium: true
     badgeUrl: https://s3.amazonaws.com/assets.datacamp.com/mobile/practice_badges/R+Programming.png
     course:
       key: a690e8e8-de36-49e6-b113-35808fce7d30
       title: Cleaning Data in R
       description: ''
       mainId: 1008
       technologyKey: R
    ```

  - The `key` should be equal to the `mobile_pool_key` value.
  - The status should be LIVE when live or HIDDEN if it should not be shown
    anymore (don’t just delete it).
  - The practice badge should be according to the topic on main-app. I’ll
    provide a list down below
  - For the course part:
    - If it’s a course for which there is a mobile equivalent, use `courseKey`
      (https://github.com/datacamp/mobile-content/blob/master/Pools.yml#L6)
    - If it’s a desktop-only course, use `course`
      (e.g. https://github.com/datacamp/mobile-content/blob/master/Pools.yml#L32-L37),
      the key for the course should be generated. Title and description is not
      super important. The mainId should map to the course on main-app that is
      live (it’s used for the progress sharing!!!). The technology should be one
      of PYTHON, R, SQL.
3. Your mobile pool will now be visible in the development app. Check to make
   sure that everything works as intended.
4. In the pool repository, submit a PR request to have your `mobile-development`
   branch merged into `mobile-master`.
5. After the PR has been reviewed, merge the changes into `mobile-master`.
