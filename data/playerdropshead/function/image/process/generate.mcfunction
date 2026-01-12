#> playerdropshead:image/process/generate
#
# This function generates the image data.

data modify storage playerdropshead:image current.image_data set from storage playerdropshead:image image_data
data modify storage playerdropshead:image current.description set from storage playerdropshead:image description
data modify storage playerdropshead:image current.pixel_character set from storage playerdropshead:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data playerdropshead.image 0
# Set width
execute store result score $width playerdropshead.image run data get storage playerdropshead:image width
# Set height
execute store result score $height playerdropshead.image run data get storage playerdropshead:image height
# Set length
scoreboard players operation $length playerdropshead.image = $width playerdropshead.image
scoreboard players operation $length playerdropshead.image *= $height playerdropshead.image
# Clear remaining entries in tellraw
data remove storage playerdropshead:image tellraw

# Add spacing on top
function playerdropshead:image/process/append/line_break
# Loop over image data
function playerdropshead:image/process/loop_over_image_data
# Add spacing on bottom
function playerdropshead:image/process/append/line_break