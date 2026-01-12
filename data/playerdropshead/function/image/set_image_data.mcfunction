#> playerdropshead:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage playerdropshead:image image_data  
# @writes storage playerdropshead:image width  
# @writes storage playerdropshead:image height  
# @writes storage playerdropshead:image background_color  
# @writes storage playerdropshead:image description  
# @writes storage playerdropshead:image pixel_character.blank  
# @writes storage playerdropshead:image pixel_character.chat  
# @writes storage playerdropshead:image pixel_character.lore

data remove storage playerdropshead:image image_data
data remove storage playerdropshead:image width
data remove storage playerdropshead:image height
data remove storage playerdropshead:image background_color
data remove storage playerdropshead:image description

$data modify storage playerdropshead:image image_data set value $(image_data)
$data modify storage playerdropshead:image width set value $(width)
$data modify storage playerdropshead:image height set value $(height)
$data modify storage playerdropshead:image background_color set value "$(background_color)"
$data modify storage playerdropshead:image description set value $(description)

data modify storage playerdropshead:image pixel_character.blank set value "　"
data modify storage playerdropshead:image pixel_character.pixel set value "▌▌"
data modify storage playerdropshead:image pixel_character.line_break set value '\n'

function playerdropshead:image/process/generate
