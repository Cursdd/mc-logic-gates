#Set temporary flag for searching gate IDs
tag @s add lg.gate_in_flood

#Find all gate outputs with the same gate ID
execute as @e[tag=lg.gate_output,tag=!lg.truth_table,tag=!lg.computed] if score @s lg.gate_ID = @n[tag=lg.gate_in_flood] lg.gate_ID run function lg:run/update_gate_outputs/update

#Remove temporary tag
tag @s remove lg.gate_in_flood