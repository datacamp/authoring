Enforced Guidelines
=========================
 
To keep Projects similar to each other and to ensure that DataCamp students get a good experience we enforce a number of guidelines for Projects. While the project is in development violation of these guidellines will show up as warnings. But when the Project is going into release these violations will be made into errors and so before release they have to be resolved.

### Project Guidelines

###### P1. Number of tasks in a project {#P1}

| Doc ID | Measure |  Min | Max | Reccomended |
|--------|---------|------|-----|-----|
| **P1** | `project_num_tasks` | 5 | 12 | 10 |

###### P2. Number of characters in the project title {#P2}

| Doc ID | Measure |  Min | Max | 
|--------|---------|------|-----|-----|
| **P2** | `project_num_chars_project_title` | 1 | 41 |

###### P3. Number of characters in the project description {#P3}

| Doc ID | Measure |  Min | Max |
|--------|---------|------|-----|-----|
| **P3** | `project_num_chars_description_short` | 1 | 90 |

### Task Guidelines

###### T1. The number of items in the instructions list {#T1}

| Doc ID | Measure |  Min | Max | Reccomended |
|--------|---------|------|-----|-----|
| **T1** | `project_num_items_instructions` | 1 | 4 | 3 |

###### T2. The number of characters in instruction (paragraph + list) {#T2}

| Doc ID | Measure |  Min | Max |
|--------|---------|------|-----|-----|
| **T2** | `project_num_chars_instructions` | 15 | 600 |

###### T3. The number of characters in the context (displayed in the notebook) {#T3}

| Doc ID | Measure |  Min | Max |
|--------|---------|------|-----|-----|
| **T3** | `project_num_chars_context` | 30 | 800 |

###### T4. The number of paragraphs in the context (displayed in the notebook) {#T4}

| Doc ID | Measure |  Min | Max | Reccomended |
|--------|---------|------|-----|-----|
| **T4** | `project_num_paras_context` | 1 | 3 | 2 | 

###### T5. The number of lines of code in the solution {#T5}

| Doc ID | Measure |  Min | Max | Reccomended |
|--------|---------|------|-----|-----|
| **T5** | `project_num_lines_code_solution` | 1 | 10 | 5 |

###### T7. The number of lines of comments in the sample code {#T7}

| Doc ID | Measure |  Min | Max | Reccomended |
|--------|---------|------|-----|-----|
| **T7** | `project_num_lines_code_comments_sample` | 1 | 8 | 3 |

###### T8. The number of lines of code in the sample code {#T8}

| Doc ID | Measure |  Min | Max | Reccomended |
|--------|---------|------|-----|-----|
| **T8** | `project_num_lines_code_sample` | 0 | 8 |  5 |

###### T9. The number of lines of code in the sample code in the first/last task {#T9}

| Doc ID | Measure |  Min | Max | Reccomended |
|--------|---------|------|-----|-----|
| **T9** | `project_num_lines_code_sample_first_last_task` | 0 | 12 | 5 |

###### T10. The number of characters in hints. {#T10}

| Doc ID | Measure |  Min | Max |
|--------|---------|------|-----|-----|
| **T10** | `project_num_chars_hint` | 0 | 800 |

###### T11. The number of characters in title of the task {#T11}

| Doc ID | Measure |  Min | Max |
|--------|---------|------|-----|-----|
| **T11** | `project_num_chars_task_title` | 1 | 41 |

### Overriding enforced guidelines

It's possible to override the enforced guidelines. This should only be done in rare situations and after consulting your DataCamp contact. In order to override the enforced guidelines you will need to create a `rules.yml` file in the root of your Project repository (alongside `project.yml`).

Here is an example of a `rules.yml` file overriding all configureable guidelines:

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