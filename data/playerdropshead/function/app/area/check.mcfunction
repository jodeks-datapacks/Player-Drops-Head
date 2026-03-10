$execute as @a if entity @s[x=$(x),y=$(y),z=$(z),distance=..$(radius)] run scoreboard players set @s playerdropshead.in_area 1

$execute as @a unless entity @s[x=$(x),y=$(y),z=$(z),distance=..$(radius)] run scoreboard players set @s playerdropshead.in_area 0