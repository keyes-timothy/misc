library(ggplot2)

# obviously you'll use your own data.frame here, not diamonds
palf <- diamonds
df_pc <- data.frame(Outcome = palf$color, hrvi_min = palf$price)

# in the line below, replace with the labels you want for 
# the Outcome variable
my_labels <- c("D", "E", "F", "G", "H", "I", "J")

my_plot <- 
  ggplot(
    df_pc, 
    aes(x = Outcome, y = hrvi_min, fill = Outcome)
  ) +
  geom_violin() +
  scale_x_discrete(breaks = my_labels, labels = my_labels) + 
  scale_fill_brewer(palette="Blues") + 
  labs(
    title="Relationship between Survival and Minimum HRVi",
    x="Patient Outcome",
    y=" Minimum HRVi in First 24 Hours") +
  theme(legend.position = "none")

my_plot
