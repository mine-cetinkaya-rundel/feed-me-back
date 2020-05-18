library(testthat)
library(digest)

test_2.1 <- function(){
    test_that('Solution is incorrect, the tidyverse package needs to be loaded. Try doing this with the library function.', {
        expect_that("package:tidyverse" %in% search() , is_true())
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

# +
test_7.3.1 <- function(){
    test_that('marathon_filtered has the incorrect number of rows', {
        expect_equal(digest(nrow(marathon_filtered)), 'd9509be2b148230926a2df0f355c16b2') # we hid the answer to the test here so you can't see it, but we can still run the test
        })
    test_that('marathon_filtered has the incorrect number of column', {
        expect_equal(digest(ncol(marathon_filtered)), 'dd4ad37ee474732a009111e3456e7ed7') # we hid the answer to the test here so you can't see it, but we can still run the test   
        })
    test_that('marathon_filtered bmi column contains the incorrect values', {
        expect_equal(colnames(marathon_filtered), c("age", "bmi", "km5_time_seconds", "km10_time_seconds", "sex"))
        expect_equal(digest(as.numeric(sum(marathon_filtered$bmi))), '206ea048affbda5298ce20573b9cb321') # we hid the answer to the test here so you can't see it, but we can still run the test
        })
print("Success!")
    }

test_7.4.1 <- function(){
    test_that('marathon_male has the incorrect number of rows', {
        expect_equal(digest(nrow(marathon_male)), 'd9509be2b148230926a2df0f355c16b2') # we hid the answer to the test here so you can't see it, but we can still run the test
        })
    test_that('marathon_male has the incorrect number of columns', {
        expect_equal(digest(ncol(marathon_male)), 'c01f179e4b57ab8bd9de309e6d576c48') # we hid the answer to the test here so you can't see it, but we can still run the test  
        })
    test_that('marathon_male bmi and/or km10_time_seconds column(s) contains the incorrect values', {
        expect_equal(digest(sum(marathon_male$bmi)), '206ea048affbda5298ce20573b9cb321') # we hid the answer to the test here so you can't see it, but we can still run the test
        expect_equal(digest(sum(as.numeric(marathon_male$km10_time_seconds))), '9c9393e1464352cd4fbea94dfadfa02a') # we hid the answer to the test here so you can't see it, but we can still run the test
        })
print("Success!")
    }

test_7.5.1 <- function(){
    test_that('marathon_minutes has the incorrect number of rows', {
        expect_equal(digest(nrow(marathon_minutes)), 'd9509be2b148230926a2df0f355c16b2') # we hid the answer to the test here so you can't see it, but we can still run the test
        })
    test_that('marathon_minutes has the incorrect number of columns', {
        expect_equal(digest(ncol(marathon_minutes)), '11946e7a3ed5e1776e81c0f0ecd383d0') # we hid the answer to the test here so you can't see it, but we can still run the test  
        })
    test_that('km10_time_minutes column does not exist contains incorrect values', {
        expect_equal(digest(sum(marathon_minutes$km10_time_minutes)), '9c9393e1464352cd4fbea94dfadfa02a') # we hid the answer to the test here so you can't see it, but we can still run the test
        })
print("Success!")
    }
# -

test_2.4 <- function(){
    test_that('Solution is incorrect', {
        expect_match(digest(answer7.4.2), "a9cf135185e7fe4ae642c8dcb228cd2d")    
        })
print("Success!")
    }

test_2.6 <- function(){
    test_that('Solution is incorrect', {
        expect_match(digest(toupper(answer2.6)), '3a5505c06543876fe45598b5e5e5195d')
        })
print("Success!")
    }
