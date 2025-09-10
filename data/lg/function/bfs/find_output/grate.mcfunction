tellraw @a "Found Grate: Split"

execute positioned ^0.25 ^ ^ as @n[predicate=lg:rod_outputs/etw,distance=..0.001,tag=!lg.searched,tag=!lg.bulb] at @s run function lg:bfs/find_output/get_type
execute positioned ^0.25 ^ ^ if entity @n[tag=!lg.searched,tag=lg.bulb,distance=..0.001] run function lg:bfs/bulb_skip {"dirX":0.25,"dirY":0,"predicate":"lg:rod_outputs/etw","flood_dir":"output"}

execute positioned ^-0.25 ^ ^ as @n[predicate=lg:rod_outputs/wte,distance=..0.001,tag=!lg.searched,tag=!lg.bulb] at @s run function lg:bfs/find_output/get_type
execute positioned ^-0.25 ^ ^ if entity @n[tag=!lg.searched,tag=lg.bulb,distance=..0.001] run function lg:bfs/bulb_skip {"dirX":-0.25,"dirY":0,"predicate":"lg:rod_outputs/wte","flood_dir":"output"}

execute positioned ^ ^0.25 ^ as @n[predicate=lg:rod_outputs/stn,distance=..0.001,tag=!lg.searched,tag=!lg.bulb] at @s run function lg:bfs/find_output/get_type
execute positioned ^ ^0.25 ^ if entity @n[tag=!lg.searched,tag=lg.bulb,distance=..0.001] run function lg:bfs/bulb_skip {"dirX":0,"dirY":0.25,"predicate":"lg:rod_outputs/stn","flood_dir":"output"}

execute positioned ^ ^-0.25 ^ as @n[predicate=lg:rod_outputs/nts,distance=..0.001,tag=!lg.searched,tag=!lg.bulb] at @s run function lg:bfs/find_output/get_type
execute positioned ^ ^-0.25 ^ if entity @n[tag=!lg.searched,tag=lg.bulb,distance=..0.001] run function lg:bfs/bulb_skip {"dirX":0,"dirY":-0.25,"predicate":"lg:rod_outputs/nts","flood_dir":"output"}
