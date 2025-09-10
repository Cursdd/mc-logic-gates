#If the block in the following direction is another bulb, repeat. Otherwise, continue BFS
tag @n[tag=lg.bulb,distance=..0.001] add lg.searched
$tellraw @a "Found Bulb: Skipped Towards $(flood_dir)"
$execute positioned ^$(dirX) ^$(dirY) ^ as @n[predicate=$(predicate),tag=!lg.bulb,distance=..0.001] at @s run function lg:bfs/find_$(flood_dir)/get_type
$execute positioned ^$(dirX) ^$(dirY) ^ if entity @n[tag=lg.bulb,distance=..0.001] run function lg:bfs/bulb_skip {"dirX":$(dirX),"dirY":$(dirY),"predicate":"$(predicate)","flood_dir":"$(flood_dir)"}