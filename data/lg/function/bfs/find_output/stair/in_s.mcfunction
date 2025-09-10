#Check to the right for input entities
tellraw @a "Found Stair: Input South"
execute positioned ^ ^-0.25 ^ as @n\
	[									  \
		predicate=lg:rod_outputs/nts,	  \
		tag=!lg.searched,				  \
		distance=..0.001				  \
	] \
at @s run function lg:bfs/find_output/get_type

#Check to the right for bulbs entities
execute positioned ^ ^-0.25 ^ if entity @n\
	[											\
		tag=lg.bulb,							\
		tag=!lg.searched,						\
		distance=..0.001						\
	] \
run function lg:bfs/bulb_skip {"dirX":0,"dirY":-0.25,"predicate":"lg:rod_outputs/nts","flood_dir":"output"}