# Copy current pixel
data modify storage nocreepergrief:image current.pixel_color set \
  from storage nocreepergrief:image current.image_data[0]
data modify storage nocreepergrief:image current.description_text set \
  from storage nocreepergrief:image current.description[0]

scoreboard players add $index.image_data nocreepergrief.image 1

# Calculate column
scoreboard players operation $index.column nocreepergrief.image = $index.image_data nocreepergrief.image
scoreboard players operation $index.column nocreepergrief.image %= $width nocreepergrief.image

# Calculate row
scoreboard players operation $index.row nocreepergrief.image = $index.image_data nocreepergrief.image
scoreboard players operation $index.row nocreepergrief.image /= $width nocreepergrief.image

# Append start spacing
execute if score $index.column nocreepergrief.image matches 1 run \
  function nocreepergrief:image/process/append/blank

# Append colored pixel
execute unless data storage nocreepergrief:image current{pixel_color: ''} run \
  function nocreepergrief:image/process/append/pixel
# Append background pixel
execute if data storage nocreepergrief:image current{pixel_color: ''} run \
  function nocreepergrief:image/process/append/background

# Append description
execute if score $index.column nocreepergrief.image matches 0 run \
    function nocreepergrief:image/process/image_end/description

# Remove first element from the image_data array
data remove storage nocreepergrief:image current.image_data[0]
# Loop over rows
execute if score $index.row nocreepergrief.image < $height nocreepergrief.image run \
  function nocreepergrief:image/process/loop_over_image_data
 