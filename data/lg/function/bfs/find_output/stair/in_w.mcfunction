#Check to the right for input entities
tellraw @a "Found Stair: Input West"
execute positioned ^0.25 ^ ^ as @n\
	[									  \
		predicate=lg:rod_outputs/etw,	  \
		tag=!lg.searched,				  \
		distance=..0.001				  \
	] \
at @s run function lg:bfs/find_output/get_type

#Check to the right for bulbs entities
execute positioned ^0.25 ^ ^ if entity @n\
	[											\
		tag=lg.bulb,							\
		tag=!lg.searched,						\
		distance=..0.001						\
	] \
run function lg:bfs/bulb_skip {"dirX":0.25,"dirY":0,"predicate":"lg:rod_outputs/etw","flood_dir":"output"}