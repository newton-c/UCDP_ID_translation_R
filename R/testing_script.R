source('R/UCDP.codes.R')

dat <- read.csv('R/ucdp-prio-acd-201.csv')

dat$test_id <- ucdp_ids(dat$conflict_id, 'new_id', 'old_id', 'conflict_id')
dat$new_test_id <- ucdp_ids(dat$test_id, 'old_id', 'new_id', 'conflict_id')
View(dat[c(1, 29:30)])
