scoreboard players enable @a give_own_head
execute as @a if score @s give_own_head matches 1 run function playerdropshead:app/trigger_give_own_head

scoreboard players enable @a give_head
execute as @a if score @s give_head matches 1 run function playerdropshead:app/dialog_give_any_head

scoreboard players enable @a playerdropshead.config
execute as @a if score @s playerdropshead.config matches 1 run function playerdropshead:config/dialog_config with storage playerdropshead:root