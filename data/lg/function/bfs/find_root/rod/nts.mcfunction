#Check for non bulbs
execute positioned ^ ^0.25 ^ as @n\
	[											\
		predicate=lg:rod_inputs/nts,			\
		distance=..0.001						\
	] \
at @s run function lg:bfs/find_root/get_type

#Check for bulbs
execute positioned ^ ^0.25 ^ if entity @n\
	[											\
		tag=lg.bulb,							\
		distance=..0.001						\
	] \
run function lg:bfs/find_root/bulb_skip {"dirX":0,"dirY":0.25,"predicate":"lg:rod_inputs/nts"}