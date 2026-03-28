$scoreboard players set &give_own_head player_drops_head.config $(dialog_give_own_head)
$data modify storage player_drops_head:root data.give_own_head set value $(dialog_give_own_head)

$scoreboard players set &give_head player_drops_head.config $(dialog_give_head)
$data modify storage player_drops_head:root data.give_head set value $(dialog_give_head)

$scoreboard players set &head_drops player_drops_head.config $(dialog_head_drops)
$data modify storage player_drops_head:root data.head_drops set value $(dialog_head_drops)
execute if score &head_drops player_drops_head.config matches 0 run data modify storage player_drops_head:root data.head_drops_killed set value 1
execute if score &head_drops player_drops_head.config matches 1 run data modify storage player_drops_head:root data.head_drops_killed set value 0

data modify storage player_drops_head:root data.dialog_give_own_head set value "$(dialog_give_own_head)"
data modify storage player_drops_head:root data.dialog_give_head set value "$(dialog_give_head)"
data modify storage player_drops_head:root data.dialog_head_drops set value "$(dialog_head_drops)"