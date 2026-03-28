scoreboard players enable @a give_own_head
execute as @a if score @s give_own_head matches 1 run function player_drops_head:app/trigger_give_own_head

scoreboard players enable @a give_head
execute as @a if score @s give_head matches 1 run function player_drops_head:app/give_head/dialog_give_any_head

scoreboard players enable @a player_drops_head.config
execute as @a if score @s player_drops_head.config matches 1 run function player_drops_head:config/dialog_config with storage player_drops_head:root data