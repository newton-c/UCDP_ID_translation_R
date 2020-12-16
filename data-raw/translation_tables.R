actor_ids <- read.csv("data-raw/translate_actor.csv")
con_ids <- read.csv("data-raw/translate_conf.csv")
dyad_ids <- read.csv("data-raw/translate_dyad.csv")

usethis::use_data(actor_ids, con_ids, dyad_ids, overwrite = T)
