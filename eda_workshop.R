# Install packages
install.packages("DataExplorer")

# Read in packages
library(DataExplorer)
library(tidyverse)

# Load data
telecom_df <- read_csv("r-ladies-oct-workshop-eda/telecom_data.csv")

# Inspect data
# attributes() gives names of columns, $class "data.frame", names of rows / index
attributes(telecom_df)

# glimpse() gives the same info for the overall data seen in the Environment Pane
glimpse(telecom_df)

# summary() gives more detailed info about each column, especially for numeric 
# values
summary(telecom_df)

# glimpse() for one column - not that useful
glimpse(telecom_df$SeniorCitizen)
glimpse(telecom_df$MultipleLines)

# only gives number of columns when used on df
length(telecom_df)

# Inspect one column - use table() for different values in a column
table(telecom_df$gender)

# Visualize distribution of gender counts
ggplot(data = telecom_df) +
  geom_bar(aes(x = gender))

# Same plot written with pipes?