# UCDP ID translations

This is an attempt at making the translation from new to old, or old to new,
UCDP actor, conflict, and dyad IDs, a single line in python.

*Note, this is in development and currently has a lot of bugs. This project*
*is not affiliated with UCDP*

*The dyad_ids currently have duplicates for certain dyads and thus gives*
*inconsistent results for those dyads.*

## Usage:
This package can be installed using `devtools`. with the following lines of
code:
```
# install.packages('devtools') # uncomment line to install devtools
devtools::install_github('newton-c/UCDP_ID_translation_R')

```
To use, type:
```
library(UCDP.codes)

ucdp_ids(id_var, source_id, target_id, code_type)
```
The main function is `ucdp_ids(id_var, source_id, target_id, code_type)`.
`id_var` is the variable containing the ID to be translated. `source_id`
indicates whether the `id_var` contains an old or new id, while `target_id`
indicates whether you want to translate to a new or old id. Both take the
arguments `'new_id'` or `'old_id'`. Finally, `code_type` identifies which ID is
being translated. The current options are `'actor_id'`, `'conflict_id'`, or
`'dyad_id'`.

## Example:
```
dat$acd_old_conflict_id <- ucdp_ids(dat$acd_conflict_id,
                                    'new_id', 'old_id', 'conflict_id')
```

This takes the variable `'acd_conflict_id'` from the dataframe `df`, which is
the new UCDP conflict ID (as indicated by `'new_id'` and `conflict_id`),
and translates to the old UCDP conflict ID (due to the input `old_id`).

## Python:
A similar package is being developed for python. You can see it in its current
state here: [UCDP_ID_translation_python](https://github.com/newton-c/UCDP_ID_translation_python)
