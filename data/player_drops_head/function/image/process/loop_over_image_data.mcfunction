# Copy current pixel
data modify storage player_drops_head:image data.current.pixel_color set \
  from storage player_drops_head:image data.current.image_data[0]
data modify storage player_drops_head:image data.current.description_text set \
  from storage player_drops_head:image data.current.description[0]

scoreboard players add $index.image_data player_drops_head.image 1

# Calculate column
scoreboard players operation $index.column player_drops_head.image = $index.image_data player_drops_head.image
scoreboard players operation $index.column player_drops_head.image %= $width player_drops_head.image

# Calculate row
scoreboard players operation $index.row player_drops_head.image = $index.image_data player_drops_head.image
scoreboard players operation $index.row player_drops_head.image /= $width player_drops_head.image

# Append start spacing
execute if score $index.column player_drops_head.image matches 1 run \
  function player_drops_head:image/process/append/blank

# Append colored pixel
execute unless data storage player_drops_head:image data.current{pixel_color: ''} run \
  function player_drops_head:image/process/append/pixel
# Append background pixel
execute if data storage player_drops_head:image data.current{pixel_color: ''} run \
  function player_drops_head:image/process/append/background

# Append description
execute if score $index.column player_drops_head.image matches 0 run \
    function player_drops_head:image/process/image_end/description

# Remove first element from the image_data array
data remove storage player_drops_head:image data.current.image_data[0]
# Loop over rows
execute if score $index.row player_drops_head.image < $height player_drops_head.image run \
  function player_drops_head:image/process/loop_over_image_data
 