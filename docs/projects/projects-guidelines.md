# Content Guidelines

We designed our learning platform and product to realize a vision. Content plays a central role in user experience. The main objective of these guidelines are to ensure that all the content we develop is in sync with this vision and provides our users with the best possible user experience.

## Projects

The following guidelines are in place in order to ensure Project consistency:

###### P1. Number of tasks in a project {#P1}
###### P2. Number of characters in the project title {#P2}
###### P3. Number of characters in the project description {#P3}

Different set of guidelines applies to tasks within the project:

###### T1. The number of items in the instructions list {#T1}
###### T2. The number of characters in instruction (paragraph + list) {#T2}
###### T3. The number of characters in the context (displayed in the notebook) {#T3}
###### T4. The number of paragraphs in the context (displayed in the notebook) {#T4}
###### T5. The number of lines of code in the solution {#T5}
###### T7. The number of lines of comments in the sample code {#T7}
###### T8. The number of lines of code in the sample code {#T8}
###### T9. The number of lines of code in the sample code {#T9}
###### T10. The number of characters in hints. {#T10}
###### T11. The number of characters in title of the task {#T11}

### Overriding rules

Sticking to the already defined rules is good, however, sometimes you will need to override the rules imposed by DataCamp.  
In order to do so you will need to create the `rules.yml` file in the root of your project repository (alongside `project.yml`).

Currently supported rules are:

| Doc ID | Measure | Reco | Min | Max |
|--------|---------|------|-----|-----|
| **P1** | `project_num_tasks` | 10 | 5 | 12 |
| **P2** | `project_num_chars_project_title` |  | 1 | 41 |
| **P3** | `project_num_chars_description_short` |  | 1 | 90 |
| **T1** | `project_num_items_instructions` | 3 | 1 | 4 |
| **T2** | `project_num_chars_instructions` |  | 15 | 600 |
| **T3** | `project_num_chars_context` | 0 | 30 | 800 |
| **T4** | `project_num_paras_context` | 2 | 1 | 3 |
| **T5** | `project_num_lines_code_solution` | 5 | 1 | 10 |
| **T7** | `project_num_lines_code_comments_sample` | 3 | 1 | 8 |
| **T8** | `project_num_lines_code_sample` |  5 | 0 | 8 |
| **T9** | `project_num_lines_code_sample_first_last_task` | 5 |  | 12 |
| **T10** | `project_num_chars_hint` |  | 0 | 800 |
| **T11** | `project_num_chars_task_title` |   | 1 | 41 |

Following is the example of `rules.yml` along with overriding all configure-able rules:

```{yaml}
rules:
    project_num_tasks:
        min: 5
        max: 12
    project_num_items_instructions:
        min: 1
        max: 4
    project_num_chars_instructions:
        min: 15
        max: 600
    project_num_chars_context:
        min: 30
        max: 800
    project_num_paras_context:
        min: 1
        max: 3
    project_num_lines_code_solution:
        min: 0
        max: 5
    project_num_lines_code_comments_sample:
        min: 1
        max: 8
    project_num_lines_code_sample:
        min: 0
        max: 8
    project_num_lines_code_sample_first_last_task:
        min: 0
        max: 12
    project_num_chars_hint:
        min: 0
        max: 800
    project_num_chars_project_title:
        min: 1
        max: 41
    project_num_chars_task_title:
        min: 1
        max: 41
    project_num_chars_description_short:
        min: 1
        max: 90
```

> #### info::Note
> In case you are working on the **Premium** project we highly recommend you to consult with your Content Developer **before** overriding any of the rules.