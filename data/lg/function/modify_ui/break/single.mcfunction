#Kill the targeted element
execute positioned as @n[tag=lg.marker] run kill @n[tag=lg.uiElement,distance=..0.0001]

#Reset fill 
scoreboard players reset @s lg.current_break_point
advancement revoke @s only lg:attack_interaction_single