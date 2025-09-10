scoreboard players operation .ID lg.TEMP = @s lg.ID

#Debug
tellraw @a [{"color":"gold","text":"====================================\n"},{"color":"green","text":"Found Input: Buffer"}]

tag @s add lg.input
tag @e[tag=!lg.input] remove lg.searched

execute positioned ^0.25 ^ ^ as @n[predicate=lg:rod_outputs/etw,distance=..0.001] at @s run function lg:bfs/find_output/get_type
execute positioned ^0.25 ^ ^ if entity @n[tag=lg.bulb,distance=..0.001] run function lg:bfs/bulb_skip {"dirX":0.25,"dirY":0,"predicate":"lg:rod_outputs/etw","flood_dir":"output"}

execute positioned ^-0.25 ^ ^ as @n[predicate=lg:rod_outputs/wte,distance=..0.001] at @s run function lg:bfs/find_output/get_type
execute positioned ^-0.25 ^ ^ if entity @n[tag=lg.bulb,distance=..0.001] run function lg:bfs/bulb_skip {"dirX":-0.25,"dirY":0,"predicate":"lg:rod_outputs/wte","flood_dir":"output"}

execute positioned ^ ^0.25 ^ as @n[predicate=lg:rod_outputs/stn,distance=..0.001] at @s run function lg:bfs/find_output/get_type
execute positioned ^ ^0.25 ^ if entity @n[tag=lg.bulb,distance=..0.001] run function lg:bfs/bulb_skip {"dirX":0,"dirY":0.25,"predicate":"lg:rod_outputs/stn","flood_dir":"output"}

execute positioned ^ ^-0.25 ^ as @n[predicate=lg:rod_outputs/nts,distance=..0.001] at @s run function lg:bfs/find_output/get_type
execute positioned ^ ^-0.25 ^ if entity @n[tag=lg.bulb,distance=..0.001] run function lg:bfs/bulb_skip {"dirX":0,"dirY":-0.25,"predicate":"lg:rod_outputs/nts","flood_dir":"output"}

tag @e[tag=!lg.input] remove lg.searched
tag @s remove lg.input