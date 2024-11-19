#%%
library(tidyverse)
library(ggplot2)
# Set a global theme for all ggplot2 plots
theme_set(theme_minimal())

# Install and load palmerpenguins if not already installed
if (!require(palmerpenguins)) install.packages("palmerpenguins")
library(palmerpenguins)

# Use the penguins dataset
data <- penguins

# Create a scatter plot showing bill dimensions by species
ggplot(data, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
  geom_point(alpha = 0.7) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Penguin Bill Dimensions by Species",
       x = "Bill Length (mm)",
       y = "Bill Depth (mm)") +
  scale_color_brewer(palette = "Set2")

# Create a violin plot showing body mass distribution
ggplot(data, aes(x = species, y = body_mass_g, fill = species)) +
  geom_violin(alpha = 0.7) +
  geom_boxplot(width = 0.2, alpha = 0.5) +
  labs(title = "Body Mass Distribution by Species",
       x = "Species",
       y = "Body Mass (g)") +
  scale_fill_brewer(palette = "Set2")

# Create a faceted histogram of flipper length
ggplot(data, aes(x = flipper_length_mm, fill = species)) +
  geom_histogram(alpha = 0.7, bins = 30) +
  facet_wrap(~species) +
  labs(title = "Flipper Length Distribution by Species",
       x = "Flipper Length (mm)",
       y = "Count") +
  scale_fill_brewer(palette = "Set2")





#%%
