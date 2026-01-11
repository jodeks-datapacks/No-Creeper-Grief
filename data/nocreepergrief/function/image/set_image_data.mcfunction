#> nocreepergrief:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage nocreepergrief:image image_data  
# @writes storage nocreepergrief:image width  
# @writes storage nocreepergrief:image height  
# @writes storage nocreepergrief:image background_color  
# @writes storage nocreepergrief:image description  
# @writes storage nocreepergrief:image pixel_character.blank  
# @writes storage nocreepergrief:image pixel_character.chat  
# @writes storage nocreepergrief:image pixel_character.lore

data remove storage nocreepergrief:image image_data
data remove storage nocreepergrief:image width
data remove storage nocreepergrief:image height
data remove storage nocreepergrief:image background_color
data remove storage nocreepergrief:image description

$data modify storage nocreepergrief:image image_data set value $(image_data)
$data modify storage nocreepergrief:image width set value $(width)
$data modify storage nocreepergrief:image height set value $(height)
$data modify storage nocreepergrief:image background_color set value "$(background_color)"
$data modify storage nocreepergrief:image description set value $(description)

data modify storage nocreepergrief:image pixel_character.blank set value "　"
data modify storage nocreepergrief:image pixel_character.pixel set value "▌▌"
data modify storage nocreepergrief:image pixel_character.line_break set value '\n'

function nocreepergrief:image/process/generate
