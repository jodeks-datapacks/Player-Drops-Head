$execute if score &give_head player_drops_head.config matches 1 run data modify storage player_drops_head:root data.player_name set value "$(dialog_give_any_head)"

execute if score &give_head player_drops_head.config matches 1 run function player_drops_head:app/give_head/give_head_macro with storage player_drops_head:root data