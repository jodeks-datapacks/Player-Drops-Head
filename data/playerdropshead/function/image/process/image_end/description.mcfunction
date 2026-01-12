# Append blank
function playerdropshead:image/process/append/blank

data modify storage playerdropshead:image tellraw append \
  from storage playerdropshead:image current.description_text

# Append blank
function playerdropshead:image/process/append/blank

# Append line_break
execute unless score $index.image_data playerdropshead.image = $length playerdropshead.image \
  run function playerdropshead:image/process/append/line_break

# Remove first element from the description
data remove storage playerdropshead:image current.description[0]
 