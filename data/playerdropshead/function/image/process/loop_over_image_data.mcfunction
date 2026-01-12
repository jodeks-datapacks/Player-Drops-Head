# Copy current pixel
data modify storage playerdropshead:image current.pixel_color set \
  from storage playerdropshead:image current.image_data[0]
data modify storage playerdropshead:image current.description_text set \
  from storage playerdropshead:image current.description[0]

scoreboard players add $index.image_data playerdropshead.image 1

# Calculate column
scoreboard players operation $index.column playerdropshead.image = $index.image_data playerdropshead.image
scoreboard players operation $index.column playerdropshead.image %= $width playerdropshead.image

# Calculate row
scoreboard players operation $index.row playerdropshead.image = $index.image_data playerdropshead.image
scoreboard players operation $index.row playerdropshead.image /= $width playerdropshead.image

# Append start spacing
execute if score $index.column playerdropshead.image matches 1 run \
  function playerdropshead:image/process/append/blank

# Append colored pixel
execute unless data storage playerdropshead:image current{pixel_color: ''} run \
  function playerdropshead:image/process/append/pixel
# Append background pixel
execute if data storage playerdropshead:image current{pixel_color: ''} run \
  function playerdropshead:image/process/append/background

# Append description
execute if score $index.column playerdropshead.image matches 0 run \
    function playerdropshead:image/process/image_end/description

# Remove first element from the image_data array
data remove storage playerdropshead:image current.image_data[0]
# Loop over rows
execute if score $index.row playerdropshead.image < $height playerdropshead.image run \
  function playerdropshead:image/process/loop_over_image_data
 