scoreboard objectives add playerdropshead.config trigger

scoreboard objectives add give_own_head trigger

scoreboard objectives add give_head trigger

scoreboard objectives add playerdropshead.image dummy

scoreboard objectives add playerdropshead.no_head dummy

scoreboard objectives add playerdropshead.in_area dummy

scoreboard players set @a playerdropshead.config 0
scoreboard players set @a give_own_head 0
scoreboard players set @a give_head 0

# Print the image
function playerdropshead:config/image

function playerdropshead:config/set_default

schedule function playerdropshead:app/area/schedule 1s