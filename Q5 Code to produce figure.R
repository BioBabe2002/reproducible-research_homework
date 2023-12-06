library(readr)
library(ggplot2)

Cui_etal2014 <- read.csv("question-5-data/Cui_etal2014.csv")

plot1 <- ggplot(data = Cui_etal2014, aes(x = log(Genome.length..kb.), y = log(Virion.volume..nm.nm.nm.))) +
  
  geom_point() +
  geom_smooth(method = lm) +
  theme_bw() +
  labs(x = 'Log[Genome length (kb)]', y = 'Log[Virion volume (nm^3)]') 
plot1