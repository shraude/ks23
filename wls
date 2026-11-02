hours <- c(1, 2, 3, 4, 5, 6, 7, 8)
marks <- c(35, 42, 50, 54, 63, 68, 76, 81)

weights <- c(1, 1, 2, 2, 3, 3, 4, 4)

model <- lm(marks ~ hours, weights = weights)

summary(model)

model

new_data <- data.frame(hours = 9)
prediction <- predict(model, newdata = new_data)

print(prediction)

plot(
  hours,
  marks,
  main = "Weighted Least Squares Regression",
  xlab = "Hours Studied",
  ylab = "Marks",
  pch = 19
)

abline(model)
