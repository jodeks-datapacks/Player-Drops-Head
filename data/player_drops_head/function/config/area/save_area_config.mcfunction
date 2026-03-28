$scoreboard players set &area_enabled player_drops_head.config $(dialog_enabled)

$data modify storage player_drops_head:root data.area.x set value $(dialog_x)
$data modify storage player_drops_head:root data.area.y set value $(dialog_y)
$data modify storage player_drops_head:root data.area.z set value $(dialog_z)
$data modify storage player_drops_head:root data.area.radius set value $(dialog_radius)
$data modify storage player_drops_head:root data.area.enabled set value $(dialog_enabled)

data modify storage player_drops_head:root data.area.dialog_x set value "$(dialog_x)"
data modify storage player_drops_head:root data.area.dialog_y set value "$(dialog_y)"
data modify storage player_drops_head:root data.area.dialog_z set value "$(dialog_z)"
data modify storage player_drops_head:root data.area.dialog_radius set value "$(dialog_radius)"
data modify storage player_drops_head:root data.area.dialog_enabled set value "$(dialog_enabled)"