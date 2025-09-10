tag @s add lg.searched

execute if entity @s[tag=lg.rod] run function lg:bfs/find_output/rod/get_direction
execute if entity @s[tag=lg.stair] run function lg:bfs/find_output/stair/get_direction
execute if entity @s[tag=lg.grate] run function lg:bfs/find_output/grate

execute if entity @s[tag=lg.buffer] run scoreboard players operation @s lg.ID = .ID lg.TEMP
execute if entity @s[tag=lg.gate_input] run scoreboard players operation @s lg.ID = .ID lg.TEMP

#Debug
execute if entity @s[tag=lg.buffer] run tellraw @a [{"color":"red","text":"Found Output: Buffer\n"},{"color":"gold","text":"===================================="}]
execute if entity @s[tag=lg.gate_input] run tellraw @a [{"color":"red","text":"Found Output: Gate input\n"},{"color":"gold","text":"===================================="}]