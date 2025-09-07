#Set stair/rod score
execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sprint:1b}}}} run scoreboard players add @s lg.current_rotation 1
execute if score @s lg.current_rotation matches 5 run scoreboard players set @s lg.current_rotation 1

#Set stair/rod rotation, half, and tags
execute if score @s lg.current_rotation matches 1 run data merge storage lg:ui {Rotation:{"rod":"up","end_rod":"down","rod_tag":"nts","stair":"west","stair_tag1":"in_n","stair_tag2":"in_w","stair_half":"bottom","rod_display":"North to South","stair_display":"North, West"}}
execute if score @s lg.current_rotation matches 2 run data merge storage lg:ui {Rotation:{"rod":"east","end_rod":"west","rod_tag":"etw","stair":"east","stair_tag1":"in_n","stair_tag2":"in_e","stair_half":"bottom","rod_display":"East to West","stair_display":"North, East"}}
execute if score @s lg.current_rotation matches 3 run data merge storage lg:ui {Rotation:{"rod":"down","end_rod":"up","rod_tag":"stn","stair":"west","stair_tag1":"in_s","stair_tag2":"in_w","stair_half":"top","rod_display":"South to North","stair_display":"South, West"}}
execute if score @s lg.current_rotation matches 4 run data merge storage lg:ui {Rotation:{"rod":"west","end_rod":"east","rod_tag":"wte","stair":"east","stair_tag1":"in_s","stair_tag2":"in_e","stair_half":"top","rod_display":"West to East","stair_display":"South, East"}}

#Modify stairs/rods
execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sprint:1b}}}} at @n[tag=lg.marker] as @n[distance=..0.001,tag=lg.rod] run function lg:modify_ui/edit/exec/rod
execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sprint:1b}}}} at @n[tag=lg.marker] as @n[distance=..0.001,tag=lg.stair] run function lg:modify_ui/edit/exec/stair

#Set gate orientation (up / down, east / west)
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sprint:1b}}}} run scoreboard players add @s lg.current_gate_orientation 1
execute if score @s lg.gate_orientation matches 3 run scoreboard players set @s lg.gate_orientation 1

advancement revoke @s only lg:attack_interaction_modify