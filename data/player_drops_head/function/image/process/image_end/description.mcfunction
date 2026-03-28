# Append blank
function player_drops_head:image/process/append/blank

data modify storage player_drops_head:image data.tellraw append \
  from storage player_drops_head:image data.current.description_text

# Append blank
function player_drops_head:image/process/append/blank

# Append line_break
execute unless score $index.image_data player_drops_head.image = $length player_drops_head.image \
  run function player_drops_head:image/process/append/line_break

# Remove first element from the description
data remove storage player_drops_head:image data.current.description[0]
 