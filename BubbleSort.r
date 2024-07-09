bubble_sort <- function(x) {
    swap_performance <- TRUE 

    # Go through this until theres no swap
    while (swap_performance) {
        swap_performance <- FALSE
        for (i in 1:(length(x) - 1)) {
            if (x[i] > x[i + 1]) {
                # Swap elements that are no in increasing order
                tmp <- x[i]
                x[i] <- x[i+1]
                x[i+1] <- tmp
                # Now record this was done
                swap_performance <- TRUE 
            }
        }
    }
    return(x)
}

arr <- c(4, 3, 5, 2, 6, 1, 7)

cat("This is the array sorted:", bubble_sort(arr))