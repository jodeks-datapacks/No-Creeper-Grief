scoreboard objectives add jodek.config dummy
execute unless score &no_creeper_grief_load_message jodek.config = &no_creeper_grief_load_message jodek.config run scoreboard players set &no_creeper_grief_load_message jodek.config 1
execute unless score &no_creeper_grief_advancements jodek.config = &no_creeper_grief_advancements jodek.config run scoreboard players set &no_creeper_grief_advancements jodek.config 1

scoreboard objectives add no_creeper_grief.image dummy

schedule function no_creeper_grief:app/execute 1s

function no_creeper_grief:config/image