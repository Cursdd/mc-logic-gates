#Update score from the entity with the temporary tag
scoreboard players operation @s lg.bit_2 = @n[tag=lg.flooding] lg.bit

#Check gate type
execute if entity @s[tag=lg.AND] run function lg:gate_math/and
execute if entity @s[tag=lg.NAND] run function lg:gate_math/nand
execute if entity @s[tag=lg.XOR] run function lg:gate_math/xor
execute if entity @s[tag=lg.OR] run function lg:gate_math/or

#Remove dirty tag and prepare for next run
tag @s remove lg.dirty
tag @s add lg.new_flood