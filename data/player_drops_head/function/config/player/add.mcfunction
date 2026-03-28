$scoreboard players set $(dialog_player_name) player_drops_head.no_head 1

data modify storage player_drops_head:root data.dialog_player_name set value "$(dialog_player_name)"

data modify storage player_drops_head:root data.players_no_head set value []
execute as @a[scores={player_drops_head.no_head=1}] run function player_drops_head:config/player/build_array

function player_drops_head:config/player/dialog_player_config with storage player_drops_head:root data