execute unless data storage player_drops_head:root data.give_own_head run data modify storage player_drops_head:root data.give_own_head set value 1
data modify storage player_drops_head:root data.dialog_give_own_head set value "$(dialog_give_own_head)"
execute unless data storage player_drops_head:root data.give_head run data modify storage player_drops_head:root data.give_head set value 0
data modify storage player_drops_head:root data.dialog_give_head set value "$(dialog_give_head)"
execute unless data storage player_drops_head:root data.head_drops run data modify storage player_drops_head:root data.head_drops set value 0
execute unless data storage player_drops_head:root data.head_drops_killed run data modify storage player_drops_head:root data.head_drops_killed set value 1
data modify storage player_drops_head:root data.dialog_head_drops set value "$(dialog_head_drops)"

execute unless data storage player_drops_head:root data.players_no_head run data modify storage player_drops_head:root data.players_no_head set value ""
data modify storage player_drops_head:root data.dialog_player_name set value "$(dialog_player_name)"

execute unless data storage player_drops_head:root data.area.x run data modify storage player_drops_head:root data.area.x set value 0
execute unless data storage player_drops_head:root data.area.y run data modify storage player_drops_head:root data.area.y set value 0
execute unless data storage player_drops_head:root data.area.z run data modify storage player_drops_head:root data.area.z set value 0
execute unless data storage player_drops_head:root data.area.radius run data modify storage player_drops_head:root data.area.radius set value 0
execute unless data storage player_drops_head:root data.area.enabled run data modify storage player_drops_head:root data.area.enabled set value 0

data modify storage player_drops_head:root data.area.dialog_x set value "$(dialog_x)"
data modify storage player_drops_head:root data.area.dialog_y set value "$(dialog_y)"
data modify storage player_drops_head:root data.area.dialog_z set value "$(dialog_z)"
data modify storage player_drops_head:root data.area.dialog_radius set value "$(dialog_radius)"
data modify storage player_drops_head:root data.area.dialog_enabled set value "$(dialog_enabled)"

execute unless score &area_enabled player_drops_head.config = &area_enabled player_drops_head.config run scoreboard players set &area_enabled player_drops_head.config 0

execute unless score &give_own_head player_drops_head.config = &give_own_head player_drops_head.config run scoreboard players set &give_own_head player_drops_head.config 1

execute unless score &give_head player_drops_head.config = &give_head player_drops_head.config run scoreboard players set &give_head player_drops_head.config 0

# 0 = head drops only when killed by player, 1 = head drops always
execute unless score &head_drops player_drops_head.config = &head_drops player_drops_head.config run scoreboard players set &head_drops player_drops_head.config 0