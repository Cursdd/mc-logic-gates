tag @s add lg.gate_output
tag @s add lg.gate_temp
tag @s add lg.gate
tag @s add lg.wire

#Set wire ID
function lg:bfs/set_id

#Find outputs
function lg:bfs/find_output/gate_output

#Spawn input blocks
execute if score @p[tag=lg.placing] lg.gate_orientation matches 1 run function lg:modify_ui/place/summon/gates/summon_vert
execute if score @p[tag=lg.placing] lg.gate_orientation matches 2 run function lg:modify_ui/place/summon/gates/summon_horiz

#Modify tags, input blocks and rotation
data modify entity @s Tags append from storage lg:ui Gate.tag

execute as @e[tag=lg.gate_temp,tag=lg.gate_input] run data modify entity @s block_state.Name set from storage lg:ui Gate.block
execute as @e[tag=lg.gate_temp,tag=lg.gate_input] run data modify entity @s transformation.translation set from entity @n[tag=lg.marker] transformation.translation
execute as @e[tag=lg.gate_temp,tag=lg.gate_input] run rotate @s ~ ~

execute as @e[tag=lg.gate_temp,tag=lg.gate_input] at @s run function lg:bfs/find_root/gate_input

#Set gate ID to link inputs
scoreboard players set .max lg.gate_ID 0

execute as @e[type=block_display,tag=lg.gate] if score @s lg.gate_ID > .max lg.gate_ID run scoreboard players operation .max lg.gate_ID = @s lg.gate_ID
scoreboard players add .max lg.gate_ID 1

scoreboard players operation @e[tag=lg.gate_temp] lg.gate_ID = .max lg.gate_ID

tag @e[tag=lg.gate_temp] remove lg.gate_temp