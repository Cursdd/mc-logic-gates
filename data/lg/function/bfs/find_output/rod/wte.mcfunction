#Check for non bulbs
tellraw @a "Found Rod: West to East"
execute positioned ^-0.25 ^ ^ as @n\
	[											\
		predicate=lg:rod_outputs/wte,			\
		distance=..0.001						\
	] \
at @s run function lg:bfs/find_output/get_type

#Check for bulbs
execute positioned ^-0.25 ^ ^ if entity @n\
	[											\
		tag=lg.bulb,							\
		distance=..0.001						\
	] \
run function lg:bfs/bulb_skip {"dirX":-0.25,"dirY":0,"predicate":"lg:rod_outputs/wte","flood_dir":"output"}