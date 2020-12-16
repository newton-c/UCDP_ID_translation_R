new_to_old_actor <- function(id_var) {
    #source("R/data-actor_ids.R")
    new_ids <- array()
    for (i in 1:length(id_var)) {
        if (id_var[i] %in% actor_ids$new_id) {
            new_ids[i] <- actor_ids$old_id[actor_ids$new_id == id_var[i]]
        } else {
            new_ids[i] <- NA
        }
    }
    return(new_ids)
}


old_to_new_actor <- function(id_var) {
   # source("R/data-actor_ids.R")
    new_ids <- array()
    for (i in 1:length(id_var)) {
        if (id_var[i] %in% actor_ids$old_id) {
            new_ids[i] <- actor_ids$new_id[actor_ids$old_id == id_var[i]]
        } else {
            new_ids[i] <- NA
        }
    }
    return(new_ids)
}


# conflict ids ----------------------------------------------------------------
new_to_old_conflict <- function(id_var) {
   # source("R/data-con_ids.R")
    new_ids <- array()
    for (i in 1:length(id_var)) {
        if (id_var[i] %in% con_ids$new_id) {
            new_ids[i] <- con_ids$old_id[con_ids$new_id == id_var[i]]
        } else {
            new_ids[i] <- NA
        }
    }
    return(new_ids)
}


old_to_new_conflict <- function(id_var) {
  #  source("R/data-con_ids.R")
    new_ids <- array()
    for (i in 1:length(id_var)) {
        if (id_var[i] %in% con_ids$old_id) {
            new_ids[i] <- con_ids$new_id[con_ids$old_id == id_var[i]]
        } else {
            new_ids[i] <- NA
        }
    }
    return(new_ids)
}


# dyad ids --------------------------------------------------------------------
new_to_old_dyad <- function(id_var) {
 #   source('R/data-dyad_ids.R')
	new_ids <- array()
	for (i in 1:length(id_var)) {
		if (id_var[i] %in% dyad_ids$new_id) {
			new_ids[i] <- dyad_ids$old_id[dyad_ids$new_id == id_var[i]]
		} else {
			new_ids[i] <- NA
		}
	}
	return(new_ids)
}


old_to_new_dyad <- function(id_var) {
  #  source('R/data-dyad_ids.R')
	new_ids <- array()
	for (i in 1:length(id_var)) {
		if (id_var[i] %in% dyad_ids$old_id) {
			new_ids[i] <- dyad_ids$new_id[dyad_ids$old_id == id_var[i]]
		} else {
			new_ids[i] <- NA
		}
	}
	return(new_ids)
}


# main function ---------------------------------------------------------------
ucdp_ids <- function(id_var, source_id, target_id, code_type) {
    if (source_id == 'new_id' & target_id == 'old_id') {
        if (code_type == 'actor_id') {
            return(new_to_old_actor(id_var))
        } else if (code_type == 'conflict_id') {
            return(new_to_old_conflict(id_var))
        } else if (code_type == 'dyad_id') {
            return(new_to_old_dyad(id_var))
        }
    } else if (source_id == 'old_id' & target_id == 'new_id') {
        if (code_type == 'actor_id') {
            return(old_to_new_actor(id_var))
        } else if (code_type == 'conflict_id') {
            return(old_to_new_conflict(id_var))
        } else if (code_type == 'dyad_id') {
            return(old_to_new_dyad(id_var))
        }
    } else {
        return("Error")
    }
}
