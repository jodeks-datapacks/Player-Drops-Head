$scoreboard players set $(dialog_player_name) playerdropshead.no_head 0

data modify storage playerdropshead:root data.dialog_player_name set value "$(dialog_player_name)"

data modify storage playerdropshead:root data.players_no_head set value []
execute as @a[scores={playerdropshead.no_head=1}] run function playerdropshead:config/player/build_array

function playerdropshead:config/player/dialog_player_config with storage playerdropshead:root data