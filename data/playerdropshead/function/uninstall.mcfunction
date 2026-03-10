advancement revoke @a only jodek:player_head_drops
advancement revoke @a only jodek:utility
advancement revoke @a only jodek:root

data remove storage playerdropshead:root data

scoreboard objectives remove playerdropshead.config
scoreboard objectives remove give_own_head
scoreboard objectives remove give_head
scoreboard objectives remove playerdropshead.image
scoreboard objectives remove playerdropshead.no_head

say Successfully uninstalled Player Drops Head datapack!