#> player_drops_head:image/process/generate
#
# This function generates the image data.

data modify storage player_drops_head:image data.current.image_data set from storage player_drops_head:image data.image_data
data modify storage player_drops_head:image data.current.description set from storage player_drops_head:image data.description
data modify storage player_drops_head:image data.current.pixel_character set from storage player_drops_head:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data player_drops_head.image 0
# Set width
execute store result score $width player_drops_head.image run data get storage player_drops_head:image data.width
# Set height
execute store result score $height player_drops_head.image run data get storage player_drops_head:image data.height
# Set length
scoreboard players operation $length player_drops_head.image = $width player_drops_head.image
scoreboard players operation $length player_drops_head.image *= $height player_drops_head.image
# Clear remaining entries in tellraw
data remove storage player_drops_head:image data.tellraw

# Add spacing on top
function player_drops_head:image/process/append/line_break
# Loop over image data
function player_drops_head:image/process/loop_over_image_data
# Add spacing on bottom
function player_drops_head:image/process/append/line_break