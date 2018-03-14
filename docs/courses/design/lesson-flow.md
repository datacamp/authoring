# Step 4 - How Are the Concepts Connected?

Describe the flow of the course on a [lesson by lesson](/courses/design#terminology-and-structure) basis. You need to provide the title of each chapter, the title of each lesson, and a brief description of each lesson's contents.

## Examples

From a course on clinical trials analysis. There is a little too much content (Ch1 should only have 3 lessons; other chapters should only have 4 lessons). Otherwise, this is thorough without being verbose, and gives a great sense of the flow of the course.

- Chapter 1: PRINCIPLES
  - Lesson 1.1: FUNDAMENTALS  
  Definition, hierarchy of evidence incl. RCT, bias, confounding, blinding, classification (Phase 0-Phase IV), protocol (eligibility, treatments, outcome measures, endpoints, study visits, ICF), SAP. 
  MCQ.
  - Lesson 1.2: RANDOMIZATION AND MINIMIZATION  
  Short description, uses and pros/ cons for each of: simple, random permuted blocks, biased coin method, stratified, minimization. 
  R exercise to produce randomization list.
  - Lesson 1.3: BASIC STATISTICAL CONCEPTS (PART 1)  
  Data types (continuous, categorical), exploring distributions, hypothesis testing, CIs.  R exercises for cts outcomes.
  - Lesson 1.4: BASIC STATISTICAL CONCEPTS (PART 2)  
  Risk, ORs, CIs, hypothesis testing.  R exercises for cat outcomes.
- Chapter 2: ALTERNATIVE TRIAL DESIGNS
  - Lesson 2.1: SEQUENTIAL DESIGNS  
  Interim analysis, Stopping rules, group sequential designs, pros/ cons. R exercise for obtaining alpha.
  - Lesson 2.2: CLUSTER RANDOMIZED TRIALS, FACTORIAL DESIGNS AND CROSSOVER TRIALS  
  Descriptions, examples. R exercise for testing interactions.
  - Lesson 2.3: EQUIVALENCE, NON-INFERIORITY  
  Descriptions, examples. MCQ on interpretation.
  - Lesson 2.4: BIOEQUIVALENCE TRIALS 
  Descriptions, examples. PK, concentration profiles, AUC. R exercises to plot concentration profiles and generate PK summary stats.  
 - Chapter 3: SAMPLE SIZE AND POWER
   - Lesson 3.1: FUNDAMENTALS   
  Definitions, relationships among effect size, alpha, beta, etc. Mean difference, proportions. R exercises for mean difference and proportions.
   - Lesson 3.2: ADJUSTMENTS    
  Unequal group sizes, unequal variances, loss to FU. R exercises.
   - Lesson 3.3: INTERIM ANALYSES AND GROUP SEQUENTIAL DESIGNS  
  Descriptions, examples. R exercise.
   - Lesson 3.4: ALTERNATIVE TRIAL DESIGNS  
  Descriptions, examples for cluster randomized trials, time-to-event, equivalence. R exercise.  
  - Chapter 4: STATISTICAL ANALYSES  
    - Lesson 4.1: ANALYSIS SETS AND SUBGROUPS   
    ITT and PP. Subgroups. R exercise for subgroups.  
    - Lesson 4.2: COVARIATES  
  Confounding. Adjustments for baseline, covariates. Regression analysis. R exercise for regression.  
    - Lesson 4.3: INTERACTIONS 
    Description, examples.  R exercise. MCQ for interpretation.  
    - Lesson 4.4: MULTIPLICITY  
  Multiple endpoints, combined endpoints, alpha adjustments.  R exercises.
    - Lesson 4.5: FURTHER TOPICS  
   Time-to-event data, longitudinal data, missing data. Last handout slide for links to ICH E9, R packages, R guidance for regulated CTs.

## FAQS

### How much detail to I need for each lesson?

You need enough detail that you and your Curriculum Lead will be convinced that there is a sensible amount of interesting content in the lesson, but not so much detail that the flow of the course is obscured. In practice, you can either write a sentence to describe the lesson contents, or you can provide sub-bullets for each exercise that the lesson will contain.

## Good ideas

### Rework Step 3 as you go

By the time you get to this step, you should have a reasonable sense of what topics you want to teach in what order. You may not have felt like that when you started step 3. As you describe the flow of the course, don't feel bound to make it match the example exercises that you created. If you can think of a better flow, write that here and reorder or change the exercises in Step 3.

### End Chapter 1 with a cliffhanger

The first chapter is free to all students on DataCamp. When students reach the end of Chapter 1, it's good to have a hook to encourage them to buy a subscription and take the rest of your course (so you can get paid). To do this, try ending Chapter 1 with an unresolved problem.

## Common problems and their solutions

### Too much content

In order to standardize on course size there are limits on the number of exercises that you can include in each chapter. Each lesson contains a video, and videos take a lot more effort to create than coding exercises. Err on the side of having fewer lessons. 


## How will this be reviewed?

This step will be reviewed by at least two people other than your Curriculum Lead, possibly including an external reviewer. They will look for the following points.

- Are there 4 or 5 chapters?
- Does chapter 1 contain 2 or 3 lessons?
- Do further chapters contain 3 or 4 lessons?
- Is there an appropriate level of detail so that the flow of the course can be determined?
- Does the course sound interesting and useful overall?
- Does the order of the topics make sense?
- Are there any important topics that are missing?
