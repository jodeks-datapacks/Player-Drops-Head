$execute if score &give_head playerdropshead.config matches 1 run data modify storage playerdropshead:root player_name set value "$(dialog_give_any_head)"

execute if score &give_head playerdropshead.config matches 1 run function playerdropshead:app/give_head_macro with storage playerdropshead:root

