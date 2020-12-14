#source('R/UCDP.codes.R')
library(UCDP.codes)
dat <- read.csv('ucdp-dyadic-201.csv')

dat$test_id <- ucdp_ids(dat$conflict_id, 'new_id', 'old_id', 'conflict_id')
dat$new_test_id <- ucdp_ids(dat$test_id, 'old_id', 'new_id', 'conflict_id')
View(dat[c(2, 26:27)])

dat$test_id <- ucdp_ids(dat$side_a_id, 'new_id', 'old_id', 'actor_id')
dat$new_test_id <- ucdp_ids(dat$test_id, 'old_id', 'new_id', 'actor_id')
View(dat[c(5, 26:27)])

dat$test_id <- ucdp_ids(dat$dyad_id, 'new_id', 'old_id', 'dyad_id')
dat$new_test_id <- ucdp_ids(dat$test_id, 'old_id', 'new_id', 'dyad_id')
View(dat[c(1, 26:27)])
