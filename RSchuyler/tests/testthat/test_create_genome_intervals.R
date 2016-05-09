context("Create_Genome_Intervals")




test_that("correct number of intervals were made", {
    set <- data.frame("chromosome"=sequence(5), "size"=round(runif(5,5000000,50000000)))
    test <- create.genome.intervals(set, intervals=FALSE, 10)
    expect_that(dim(set)[1] == dim(test)[1]/10, is_true())
})

test_that("intervals of correct length were made", {
    set <- data.frame("chromosome"=sequence(5), "size"=round(runif(5,50000000,50000000)))
    test <- create.genome.intervals(set, intervals=TRUE, 10)
    expect_that(round(test[1,3] - test[1,2], -6) == 10000000, is_true())
})
