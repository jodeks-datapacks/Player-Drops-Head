scoreboard objectives add playerdropshead.config trigger

scoreboard objectives add give_own_head trigger

scoreboard objectives add give_head trigger

scoreboard objectives add playerdropshead.image dummy

scoreboard players set @a playerdropshead.config 0
scoreboard players set @a give_own_head 0
scoreboard players set @a give_head 0

# Print the image
function playerdropshead:config/image

execute unless score &give_own_head playerdropshead.config = &give_own_head playerdropshead.config run data modify storage playerdropshead:root give_own_head set value 1
execute unless score &give_own_head playerdropshead.config = &give_own_head playerdropshead.config run data modify storage playerdropshead:root dialog_give_own_head set value "$(dialog_give_own_head)"
execute unless score &give_own_head playerdropshead.config = &give_own_head playerdropshead.config run data modify storage playerdropshead:root give_head set value 0
execute unless score &give_own_head playerdropshead.config = &give_own_head playerdropshead.config run data modify storage playerdropshead:root dialog_give_head set value "$(dialog_give_head)"
execute unless score &give_own_head playerdropshead.config = &give_own_head playerdropshead.config run data modify storage playerdropshead:root head_drops set value 0
execute unless score &give_own_head playerdropshead.config = &give_own_head playerdropshead.config run data modify storage playerdropshead:root head_drops_killed set value 1
execute unless score &give_own_head playerdropshead.config = &give_own_head playerdropshead.config run data modify storage playerdropshead:root dialog_head_drops set value "$(dialog_head_drops)"

execute unless score &give_own_head playerdropshead.config = &give_own_head playerdropshead.config run scoreboard players set &give_own_head playerdropshead.config 1

execute unless score &give_head playerdropshead.config = &give_head playerdropshead.config run scoreboard players set &give_head playerdropshead.config 0

# 0 = head drops only when killed by player, 1 = head drops always
execute unless score &head_drops playerdropshead.config = &head_drops playerdropshead.config run scoreboard players set &head_drops playerdropshead.config 0

