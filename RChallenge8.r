set.seed(123)

train_indicies <- sample(1:nrow(iris), 0.7 * nrow(iris))

train_data <- iris[train_indicies, ]

test_data <- iris[-train_indicies, ]

library(class)

model <- knn(train = train_data[, -5], test = test_data[, -5], cl = train_data[, 5],
k = 3)

accuracy <- sum(model == test_data[, 5]) / nrow(test_data)

cat("The accuracy of the k-NN classifier on the testing set is:", accuracy)