library(testthat)
library(digest)

test_2.1 <- function(){
    test_that('Solution is incorrect, the dplyr package needs to be loaded. Try doing this with the library function.', {
        expect_that("package:dplyr" %in% search() , is_true())
        })
    test_that('Solution is incorrect, the ggplot2 package needs to be loaded. Try doing this with the library function.', {
        expect_that("package:ggplot2" %in% search() , is_true())
        })
print("Success!")
    }

test_2.2 <- function(){
    test_that('Solution is incorrect', {
        expect_equal(digest(toupper(answer2.2)), '475bf9280aab63a82af60791302736f6') # we hid the answer to the test here so you can't see it, but we can still run the test
        })
print("Success!")
    }

test_2.3 <- function(){
    test_that('Did not create an object named race_times', {
        expect_true(exists("race_times"))
        })
    test_that('race_times should be a data frame', {
        expect_true('data.frame' %in% class(race_times))
        })
    test_that('race_times does not contain the correct data', {
        expect_equal(dim(race_times), c(1833, 5))
        expect_equal(sum(race_times$age), 66455.5)
        expect_equal(colnames(race_times), c("age", "bmi", "km5_time_seconds", "km10_time_seconds", "sex"))
        })
print("Success!")
    }

test_2.4 <- function(){
    test_that('race_times has the incorrect number of rows', {
        expect_equal(digest(nrow(race_times_to_plot)), '85572d175d6021278247e399a635781e') # we hid the answer to the test here so you can't see it, but we can still run the test
        })
    test_that('race_times has the incorrect number of columns', {
        expect_equal(digest(ncol(race_times_to_plot)), '11946e7a3ed5e1776e81c0f0ecd383d0') # we hid the answer to the test here so you can't see it, but we can still run the test   
        })
    test_that('race_times has the wrong columns', {
        expect_equal(digest(paste0(sort(colnames(race_times_to_plot)), collapse = "")), '8838402ec440400a953812a0dfe57f63') # we hid the answer to the test here so you can't see it, but we can still run the test   
        })
    test_that('marathon_filtered bmi column contains the incorrect values', {
        expect_equal(digest(as.numeric(sum(race_times_to_plot$bmi))), 'ef0659ac202f6a9089d16b71432c5242') # we hid the answer to the test here so you can't see it, but we can still run the test
        })
print("Success!")
    }

test_2.5 <- function(){
    test_that('Did not create a plot named race_times_plot', {
        expect_true(exists("race_times_plot")) 
        })
    test_that('bmi should be on the x-axis.', {
        expect_that("bmi" %in% c(rlang::get_expr(race_times_plot$mapping$x),rlang::get_expr(race_times_plot$layers[[1]]$mapping$x)), is_true())
        })
    test_that('km5_time_minutes should be on the y-axis.', {
        expect_that("km5_time_minutes" %in% c(rlang::get_expr(race_times_plot$mapping$y), rlang::get_expr(race_times_plot$layers[[1]]$mapping$y)) , is_true())
        })
    test_that('race_times_plot should be a scatter plot.', {
        expect_that("GeomPoint" %in% c(class(race_times_plot$layers[[1]]$geom)) , is_true())
        })
    test_that('Labels on the axes should be descriptive and human readable.', {
        expect_that((race_times_plot$labels$y) == 'bmi', is_false())
        expect_that((race_times_plot$labels$x) == 'km5_time_minutes', is_false())
        })
    print("Success!")
    }

test_2.6 <- function(){
    test_that('Solution is incorrect', {
        expect_match(digest(toupper(answer2.6)), '3a5505c06543876fe45598b5e5e5195d')
        })
print("Success!")
    }
