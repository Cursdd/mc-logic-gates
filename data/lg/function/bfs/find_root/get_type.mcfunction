tag @s add lg.searched
execute if entity @s[tag=lg.rod] run function lg:bfs/find_root/rod/get_direction
execute if entity @s[tag=lg.stair] run function lg:bfs/find_root/stair/get_direction
execute if entity @s[tag=lg.grate] run function lg:bfs/find_root/grate

execute if entity @s[tag=lg.buffer] run function lg:bfs/find_output/buffer
execute if entity @s[tag=lg.gate_output] run function lg:bfs/find_output/gate_output