execute as @e[type=minecraft:creeper,tag=!tagged_no_creeper_grief] at @s run data merge entity @s {ExplosionRadius:-3}

tag @e[type=minecraft:creeper,tag=!tagged_no_creeper_grief] add tagged_no_creeper_grief

scoreboard players enable @a help.nocreepergrief

execute as @a if score @s help.nocreepergrief matches 1 run function nocreepergrief:trigger_help