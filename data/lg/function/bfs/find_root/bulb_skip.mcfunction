#If the block in the following direction is another bulb, repeat. Otherwise, continue BFS
tag @n[tag=lg.bulb,distance=..0.001] add lg.searched
$execute positioned ^$(dirX) ^$(dirY) ^ as @n[predicate=$(predicate),tag=!lg.bulb,distance=..0.001] at @s run function lg:bfs/find_root/get_type
$execute positioned ^$(dirX) ^$(dirY) ^ if entity @n[tag=lg.bulb,distance=..0.001] run function lg:bfs/find_root/bulb_skip {"dirX":$(dirX),"dirY":$(dirY),"predicate":"$(predicate)"}
