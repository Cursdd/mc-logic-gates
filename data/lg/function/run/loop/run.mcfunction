#Set temporary bit and ID for pasting and checking respectively
tag @s add lg.flooding
tag @s add lg.computing

################################### Stack trace
tellraw @a [{"color":"aqua","text":"------------------------------------\n"},{"color":"gold","text":"Flooding from wire ID "},{"score":{"name":"@s","objective":"lg.ID"}}]

execute as @e[tag=lg.gate_input,tag=!lg.truth_table] if score @s lg.ID = @n[tag=lg.flooding] lg.ID run tellraw @a [{"text":"Output to Gate "},{"score":{"name":"@s","objective":"lg.gate_ID"}}]
execute as @e[tag=lg.buffer] if score @s lg.ID = @n[tag=lg.flooding] lg.ID run tellraw @a "Updated Buffer Output"
################################### Stack trace

#Find all linked gate inputs
execute as @e[tag=lg.gate_input,tag=!lg.truth_table] if score @s lg.ID = @n[tag=lg.flooding] lg.ID run function lg:run/update_gate_outputs/init

#Find all linked buffers
execute as @e[tag=lg.buffer] if score @s lg.ID = @n[tag=lg.flooding] lg.ID if score @n[tag=lg.flooding] lg.bit matches 1 run data modify entity @s block_state.Properties.lit set value "true"
execute as @e[tag=lg.buffer] if score @s lg.ID = @n[tag=lg.flooding] lg.ID if score @n[tag=lg.flooding] lg.bit matches 0 run data modify entity @s block_state.Properties.lit set value "false"

#Remove temporary tags
tag @s remove lg.computing
tag @s remove lg.flooding

#Add permanent flooded tag
tag @s add lg.flooded