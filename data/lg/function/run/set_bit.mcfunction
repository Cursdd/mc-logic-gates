#Set temporary tag for pasting bit
tag @s add lg.flooding

#Find bit value via block state
execute store result score @s lg.bit run data get entity @s block_state.Properties.lit
execute if score @s lg.bit matches 4 run scoreboard players set @s lg.bit 1
execute if score @s lg.bit matches 5 run scoreboard players set @s lg.bit 0

################################### Stack trace
tellraw @a [{"color":"aqua","text":"------------------------------------\n"},{"color":"gold","text":"Flooding from wire ID "},{"score":{"name":"@s","objective":"lg.ID"}}]
execute as @e[tag=lg.gate_input,tag=!lg.truth_table] if score @s lg.ID = @n[tag=lg.flooding] lg.ID run tellraw @a [{"text":"Outputs to Gate "},{"score":{"name":"@s","objective":"lg.gate_ID"}}]
################################### Stack trace

#Find all gate inputs with the same ID
execute as @e[tag=lg.gate_input,tag=!lg.truth_table] if score @s lg.ID = @n[tag=lg.flooding] lg.ID run function lg:run/update_gate_outputs/init

#Remove temporary tag and rerun flood at computed gates
tag @s remove lg.flooding

#Rerun flood from found gates
