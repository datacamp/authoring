# Content Diagnostics

Once you have successfully [created](/courses/README.md) and [built](/interface/content-overview.md#build-information) a course a set of diagnostics messages are going to be available for you in [content overview panel](/interface/content-overview.md) under "Maintenance".

Diagnostic rules are DataCamp recommendations for keeping content consistent and ensuring quality.

## Diagnostics

All the diagnostics are being done on three different levels being **Course**, **Chapter** and **Exercise** where each diagnostic message will have a level of importance such as `warning` or `info` along with information to which exercise type the diagnostic is valid for.

### Course

| Message                                          | Error level |
|--------------------------------------------------|-------------|
| The course should have at least 44 exercises     | warning     |
| The course shouldn't have more than 60 exercises | warning     |
| The course should have at least 4 chapters       | warning     |
| The course shouldn't have more than 5 chapters   | warning     |


### Chapter

| Message                                                  | Error level |
|----------------------------------------------------------|-------------|
| The first chapter should have at least 8 exercises.      | warning     |
| The first chapter shouldn't have more than 12 exercises. | warning     |
| The chapter should have at least 10 exercises.           | warning     |
| The chapter shouldn't have more than 16 exercises.       | warning     |

### Exercise

| Message                                                                             | Error level | Applied to exercise type                           |
|-------------------------------------------------------------------------------------|-------------|----------------------------------------------------|
| Exercises should not have more than 4 lines of instructions.                        | warning     | `ALL`                                                |
| Exercises should have at least 2 lines of instructions.                             | warning     | `ALL` but `VideoExercise`                              |
| Exercises should not have more than 4 lines of hints.                               | warning     | `ALL`                                                |
| Exercises should have a Success Message in SCT.                                     | warning     | `NormalExercise`                                     |
| Exercises should have a Submission Correctness Test.                                | warning     | `NormalExercise`, `MultipleChoiceExercise`             |
| MultipleChoice exercises should not have a description, longer than 600 characters. | warning     | `MultipleChoiceExercise`                             |
| Normal exercises should not have a description, longer than 400 characters.         | warning     | `NormalExercise`                                     |
| Comments should match in the sample and solution code.                              | warning     | `All` Exercise types                                 |
| Each exercise should have a hint.                                                   | warning     | `ALL` but `VideoExercise`, `BulletExercise`, `TabExercise` |
| Each exercise should have instructions.                                             | warning     | `ALL` but `VideoExercise`, `BulletExercise`, `TabExercise` |