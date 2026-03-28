scoreboard objectives add jodek.config dummy
execute unless score &player_drops_head_load_message jodek.config = &player_drops_head_load_message jodek.config run scoreboard players set &player_drops_head_load_message jodek.config 1
execute unless score &player_drops_head_advancements jodek.config = &player_drops_head_advancements jodek.config run scoreboard players set &player_drops_head_advancements jodek.config 1

scoreboard objectives add player_drops_head.config trigger

scoreboard objectives add give_own_head trigger

scoreboard objectives add give_head trigger

scoreboard objectives add player_drops_head.image dummy

scoreboard objectives add player_drops_head.no_head dummy

scoreboard objectives add player_drops_head.in_area dummy

scoreboard players set @a player_drops_head.config 0
scoreboard players set @a give_own_head 0
scoreboard players set @a give_head 0

# Print the image
function player_drops_head:config/image

function player_drops_head:config/set_default

schedule function player_drops_head:app/area/schedule 1s