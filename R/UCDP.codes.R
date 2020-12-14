
# R
#source('R/dictionaries/actor_ids.R')
#source('R/dictionaries/conflict_ids.R')
#source('R/dictionaries/dyad_ids.R')


new_to_old_actor <- function(id_var) {
    source('R/actor_ids.R')
    new_ids <- array()
    id_var <- as.numeric(id_var)
    for (i in 1:length(id_var)) {
        if (id_var[i] %in% new_to_old_actor_id$keys()) {
            new_ids[i] <- new_to_old_actor_id$get(id_var[i])
        } else {
            new_ids[i] <- NA
        }
    }
    return(new_ids)
}


old_to_new_actor <- function(id_var){
    source('R/actor_ids.R')
    new_ids <- array()
    for (i in 1:length(id_var)) {
        if (id_var[i] %in% old_to_new_actor_id$keys()) {
            new_ids[i] <- old_to_new_actor_id$get(id_var[i])
        } else {
            new_ids[i] <- NA
        }
    }
    return(new_ids)
}


new_to_old_conflict <- function(id_var) {
  source('R/conflict_ids.R')
	new_ids <- array()
	for (i in 1:length(id_var)) {
		if (id_var[i] %in% new_to_old_conflict_id$keys()) {
			new_ids[i] <- new_to_old_conflict_id$get(id_var[i])
		} else {
			new_ids[i] <- NA
		}
	}
	return(new_ids)
}


old_to_new_conflict <- function(id_var) {
    source('R/conflict_ids.R')
    new_ids <- array()
    for (i in 1:length(id_var)) {
        if (id_var[i] %in% old_to_new_conflict_id$keys()) {
            new_ids[i] <- old_to_new_conflict_id$get(id_var[i])
        } else {
            new_ids[i] <- NA
        }
    }
    return(new_ids)
}


new_to_old_dyad <- function(id_var) {
  source('R/dyad_ids.R')
	new_ids <- array()
	for (i in 1:length(id_var)) {
		if (id_var[i] %in% new_to_old_dyad_id$keys()) {
			new_ids[i] <- new_to_old_dyad_id$get(id_var[i])
		} else {
			new_ids[i] <- NA
		}
	}
	return(new_ids)
}


old_to_new_dyad <- function(id_var) {
    source('R/dyad_ids.R')
    new_ids <- array()
    for (i in 1:length(id_var)) {
        if (id_var[i] %in% old_to_new_dyad_id$keys()) {
            new_ids[i] <- old_to_new_dyad_id$get(id_var[i])
        } else {
            new_ids[i] <- NA
        }
    }
    return(new_ids)
}


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
