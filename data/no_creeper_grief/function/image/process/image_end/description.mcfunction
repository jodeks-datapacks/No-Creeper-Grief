# Append blank
function no_creeper_grief:image/process/append/blank

data modify storage no_creeper_grief:image data.tellraw append \
  from storage no_creeper_grief:image data.current.description_text

# Append blank
function no_creeper_grief:image/process/append/blank

# Append line_break
execute unless score $index.image_data no_creeper_grief.image = $length no_creeper_grief.image \
  run function no_creeper_grief:image/process/append/line_break

# Remove first element from the description
data remove storage no_creeper_grief:image data.current.description[0]
 