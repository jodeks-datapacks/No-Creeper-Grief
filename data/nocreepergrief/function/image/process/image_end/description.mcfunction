# Append blank
function nocreepergrief:image/process/append/blank

data modify storage nocreepergrief:image tellraw append \
  from storage nocreepergrief:image current.description_text

# Append blank
function nocreepergrief:image/process/append/blank

# Append line_break
execute unless score $index.image_data nocreepergrief.image = $length nocreepergrief.image \
  run function nocreepergrief:image/process/append/line_break

# Remove first element from the description
data remove storage nocreepergrief:image current.description[0]
 