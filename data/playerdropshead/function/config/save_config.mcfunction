$scoreboard players set &give_own_head playerdropshead.config $(dialog_give_own_head)
$data modify storage playerdropshead:root data.give_own_head set value $(dialog_give_own_head)

$scoreboard players set &give_head playerdropshead.config $(dialog_give_head)
$data modify storage playerdropshead:root data.give_head set value $(dialog_give_head)

$scoreboard players set &head_drops playerdropshead.config $(dialog_head_drops)
$data modify storage playerdropshead:root data.head_drops set value $(dialog_head_drops)
execute if score &head_drops playerdropshead.config matches 0 run data modify storage playerdropshead:root data.head_drops_killed set value 1
execute if score &head_drops playerdropshead.config matches 1 run data modify storage playerdropshead:root data.head_drops_killed set value 0

data modify storage playerdropshead:root data.dialog_give_own_head set value "$(dialog_give_own_head)"
data modify storage playerdropshead:root data.dialog_give_head set value "$(dialog_give_head)"
data modify storage playerdropshead:root data.dialog_head_drops set value "$(dialog_head_drops)"