# Reproducible research: version control and R

Candidate number: 	1441304
Link for Logistic growth document containing answers for questions 1,2,3:
(https://github.com/BioBabe2002/logistic_growth)

Q4) Brownian motion is the random motion of particles suspended in a medium resulting from their collision fast moving molecles or atoms in this medium. This motion is completely stochastic.

A) Execute the code to produce the paths of two random walks. What do you observe?
![Image 04-12-2023 at 10 19](https://github.com/BioBabe2002/reproducible-research_homework/assets/150148922/da7cae40-0d77-4257-af43-c46ae9056627)

The two plots show the various paths of randomly generated walks through time. The colour key denotes that walks generated at earlier time points have a darker blue tracing while walks generated at a later time point have lighter blue tracing. Both paths show completely different paths despite having the same number of steps and starting at the same coordinates (0,0).The left hand plot shows the path to be more concentrated while the right hand follows a more "spread out" path across the grid space. This variation between the two plots highlights well the stochasticity and randomeness of each path. 

B) Investigate the term random seeds. What is a random seed and how does it work?

Random seeds are used to create variables that take on random values, in a way which ensures that the results are reproducible. Random seeds are important for reproducibility so that if anyone decideds to run your code they will be able to obtain identical random outputs. When setting a seed, the state of the random number generator is altered so that it will produce the same sequence of random numbers every time given the seed value remains the same.

C)Edit the script to make a reproducible simulation of Brownian motion. Commit the file and push it to your forked `reproducible-research_homework` repo.

- Link can be accessed here:

(https://github.com/BioBabe2002/reproducible-research_homework/commit/1b97983eb706fc62156acfad5a2fa411ee5ab99f)

D) Go to your commit history and click on the latest commit. Show the edit you made to the code in the comparison view (add this image to the **README.md** of the fork).
![Image 04-12-2023 at 15 03](https://github.com/BioBabe2002/reproducible-research_homework/assets/150148922/c3c991fb-c371-4806-8a03-65d74283550c)

Q5) In 2014, Cui, Schlub and Holmes published an article in the Journal of Virology (doi: https://doi.org/10.1128/jvi.00362-14) showing that the size of viral particles, more specifically their volume, could be predicted from their genome size (length). They found that this relationship can be modelled using an allometric equation of the form , where  is the virion volume in nm3 and  is the genome length in nucleotides.

A) Import the data for double-stranded DNA (dsDNA) viruses taken from the Supplementary Materials of the original paper into Posit Cloud (the csv file is in the question-5-data folder). How many rows and columns does the table have? (3 points) 

- There are 33 rows and 13 columns.

B) What transformation can you use to fit a linear model to the data? Apply the transformation. (3 points)

A log transformation is useful to fit the linear model to the data. I applied the log transformation to both the virion volume and genome length. 

Cui_etal2014$log_virion_volume <- log(Cui_etal2014$`Virion.volume..nm.nm.nm.`)
Cui_etal2014$log_genome_length <- log(Cui_etal2014$`Genome.length..kb.`)

C) Find the exponent (alpha) and scaling factor (beta) of the allometric law for dsDNA viruses and write the p-values from the model you obtained, are they statistically significant? Compare the values you found to those shown in Table 2 of the paper, did you find the same values? (10 points)

The exponent and scaling factor for dsDNA viruses are given in a summary of the linear model using this code:
summary(linear_model)
The exponent is 1.5152
P value = 6.44e-10
Scaling factor = 7.0748
P value = 2.28e-10
Both the exponent and scaling factor are statistically significant. The scaling factor is different to that seen in the paper but if we logarithmically backtransform -> e^7.0748 it gives 1181.8071 which is very close to 1182 given in the paper. We can assume the scaling factor value in the article had been rounded.

D) Write the code to reproduce the figure shown below. (10 points)

## Instructions

The homework for this Computer skills practical is divided into 5 questions for a total of 100 points (plus an optional bonus question worth 10 extra points). First, fork this repo and make sure your fork is made **Public** for marking. Answers should be added to the # INSERT ANSWERS HERE # section above in the **README.md** file of your forked repository.

Questions 1, 2 and 3 should be answered in the **README.md** file of the `logistic_growth` repo that you forked during the practical. To answer those questions here, simply include a link to your logistic_growth repo.

**Submission**: Please submit a single **PDF** file with your candidate number (and no other identifying information), and a link to your fork of the `reproducible-research_homework` repo with the completed answers. All answers should be on the `main` branch.

## Assignment questions 

1) (**10 points**) Annotate the **README.md** file in your `logistic_growth` repo with more detailed information about the analysis. Add a section on the results and include the estimates for $N_0$, $r$ and $K$ (mention which *.csv file you used).
   
2) (**10 points**) Use your estimates of $N_0$ and $r$ to calculate the population size at $t$ = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth? 

3) (**20 points**) Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the **README.md** file so it can be viewed in the repo homepage.
   
4) (**30 points**) Sometimes we are interested in modelling a process that involves randomness. A good example is Brownian motion. We will explore how to simulate a random process in a way that it is reproducible:

   - A script for simulating a random_walk is provided in the `question-4-code` folder of this repo. Execute the code to produce the paths of two random walks. What do you observe? (10 points)
   - Investigate the term **random seeds**. What is a random seed and how does it work? (5 points)
   - Edit the script to make a reproducible simulation of Brownian motion. Commit the file and push it to your forked `reproducible-research_homework` repo. (10 points)
   - Go to your commit history and click on the latest commit. Show the edit you made to the code in the comparison view (add this image to the **README.md** of the fork). (5 points)

5) (**30 points**) In 2014, Cui, Schlub and Holmes published an article in the *Journal of Virology* (doi: https://doi.org/10.1128/jvi.00362-14) showing that the size of viral particles, more specifically their volume, could be predicted from their genome size (length). They found that this relationship can be modelled using an allometric equation of the form **$`V = \beta L^{\alpha}`$**, where $`V`$ is the virion volume in nm<sup>3</sup> and $`L`$ is the genome length in nucleotides.

   - Import the data for double-stranded DNA (dsDNA) viruses taken from the Supplementary Materials of the original paper into Posit Cloud (the csv file is in the `question-5-data` folder). How many rows and columns does the table have? (3 points)
   - What transformation can you use to fit a linear model to the data? Apply the transformation. (3 points)
   - Find the exponent ($\alpha$) and scaling factor ($\beta$) of the allometric law for dsDNA viruses and write the p-values from the model you obtained, are they statistically significant? Compare the values you found to those shown in **Table 2** of the paper, did you find the same values? (10 points)
   - Write the code to reproduce the figure shown below. (10 points)
   - Can be found in repo under "Q5 Code to Produce Figure".

  <p align="center">
     <img src="https://github.com/josegabrielnb/reproducible-research_homework/blob/main/question-5-data/allometric_scaling.png" width="600" height="500">
  </p>

  - What is the estimated volume of a 300 kb dsDNA virus? (4 points)

**Bonus** (**10 points**) Explain the difference between reproducibility and replicability in scientific research. How can git and GitHub be used to enhance the reproducibility and replicability of your work? what limitations do they have? (e.g. check the platform [protocols.io](https://www.protocols.io/)).
