#Dimensionality Reduction with PCA

# Perform PCA on selected columns
pca <- prcomp(mtcars[, -c(1, 8, 9, 10)], scale = TRUE)

# Extract the scores of the first two principal components
scores  <- as.data.frame(pca$x[, 1:2])

plot(scores$PC1, scores$PC2, xlab = "PC1", ylab = "PC2", main = "Scatter Plot of PC1 vs. Pc2")