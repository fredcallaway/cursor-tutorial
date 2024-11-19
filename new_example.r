library(ggplot2)

# Create and save plot
car_plot <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm") +
  theme_minimal() +
  labs(
    title = "Car Weight vs. Miles Per Gallon",
    x = "Weight (1000 lbs)",
    y = "Miles Per Gallon"
  )

# Display plot
print(car_plot)


