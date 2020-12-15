# first, install the tidyverse package
install.packages("tidyverse")

# attach the package 
library(tidyverse)

# here, insert all the code you have to this point and 
# then store the table that you created with the `table` function 
# to the variable my_table (don't do the sorting)
my_table <- table(hashtags)

# convert the table into a data.frame

my_df <- 
  my_table %>% 
  as_tibble(.name_repair = "unique")

my_df %>% 
  write_csv(file = "~/Desktop/my_csv.csv")
  

