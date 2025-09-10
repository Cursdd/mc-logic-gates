execute positioned ^0.25 ^ ^ if entity @n\
	[\
		predicate=lg:rod_inputs/etw,\
		distance=..0.001\
	] \
		positioned ^-0.5 ^ ^ if entity @n\
	[\
		predicate=lg:rod_outputs/etw,\
		distance=..0.001\
	] \
positioned ^0.25 ^ ^ run function lg:bfs/find_root/rod/etw

execute positioned ^-0.25 ^ ^ if entity @n\
	[\
		predicate=lg:rod_inputs/wte,\
		distance=..0.001\
	] \
		positioned ^0.5 ^ ^ if entity @n\
	[\
		predicate=lg:rod_outputs/wte,\
		distance=..0.001\
	] \
positioned ^-0.25 ^ ^ run function lg:bfs/find_root/rod/wte


execute positioned ^ ^-0.25 ^ if entity @n\
	[\
		predicate=lg:rod_inputs/stn,\
		distance=..0.001\
	] \
		positioned ^ ^0.5 ^ if entity @n\
	[\
		predicate=lg:rod_outputs/stn,\
		distance=..0.001\
	] \
positioned ^ ^-0.25 ^ run function lg:bfs/find_root/rod/stn

execute positioned ^ ^0.25 ^ if entity @n\
	[\
		predicate=lg:rod_inputs/nts,\
		distance=..0.001\
	] \
		positioned ^ ^-0.5 ^ if entity @n\
	[\
		predicate=lg:rod_outputs/nts,\
		distance=..0.001\
	] \
positioned ^ ^0.25 ^ run function lg:bfs/find_root/rod/nts
