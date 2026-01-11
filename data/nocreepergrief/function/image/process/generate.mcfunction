#> nocreepergrief:image/process/generate
#
# This function generates the image data.

data modify storage nocreepergrief:image current.image_data set from storage nocreepergrief:image image_data
data modify storage nocreepergrief:image current.description set from storage nocreepergrief:image description
data modify storage nocreepergrief:image current.pixel_character set from storage nocreepergrief:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data nocreepergrief.image 0
# Set width
execute store result score $width nocreepergrief.image run data get storage nocreepergrief:image width
# Set height
execute store result score $height nocreepergrief.image run data get storage nocreepergrief:image height
# Set length
scoreboard players operation $length nocreepergrief.image = $width nocreepergrief.image
scoreboard players operation $length nocreepergrief.image *= $height nocreepergrief.image
# Clear remaining entries in tellraw
data remove storage nocreepergrief:image tellraw

# Add spacing on top
function nocreepergrief:image/process/append/line_break
# Loop over image data
function nocreepergrief:image/process/loop_over_image_data
# Add spacing on bottom
function nocreepergrief:image/process/append/line_break