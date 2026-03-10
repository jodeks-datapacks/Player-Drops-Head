say @s

execute as @s at @s run loot spawn ~ ~100 ~ loot playerdropshead:player_head
execute as @s run data modify storage playerdropshead:root data.players_no_head append from entity @e[nbt={Item:{components:{"minecraft:custom_data":{playerdropshead.player_name:1b}}}},limit=1] Item.components."minecraft:profile".name
execute as @s run data modify storage playerdropshead:root data.player_no_head set from entity @e[nbt={Item:{components:{"minecraft:custom_data":{playerdropshead.player_name:1b}}}},limit=1] Item.components."minecraft:profile".name
execute as @s run function playerdropshead:config/player/kill_player_head with storage playerdropshead:root data