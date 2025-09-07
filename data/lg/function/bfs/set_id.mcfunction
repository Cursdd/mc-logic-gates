scoreboard players set .max lg.ID 0

execute as @e[type=block_display,tag=lg.wire] if score @s lg.ID > .max lg.ID run scoreboard players operation .max lg.ID = @s lg.ID
scoreboard players add .max lg.ID 1

scoreboard players operation @s lg.ID = .max lg.ID