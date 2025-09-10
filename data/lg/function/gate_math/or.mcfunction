################################### Stack trace
tellraw @a [{"color":"gold","text":"====================================\n"},{"color":"aqua","text":"Found Gate: "},{"color":"dark_aqua","text":"OR\n"},{"color":"white","text":"Wire ID: "},{"score":{"name":"@s","objective":"lg.ID"}},{"color":"white","text":"\nGate ID: "},{"score":{"name":"@s","objective":"lg.gate_ID"}}]
tellraw @a [{"text": "Input One: "},{"color": "gold", "score":{"name":"@s","objective":"lg.bit"}},{"text": " | Input Two: "},{"color": "gold", "score":{"name":"@s","objective":"lg.bit_2"}}]
################################### Stack trace

scoreboard players operation .temp_bit lg.TEMP = @s lg.bit
scoreboard players operation .temp_bit lg.TEMP *= @s lg.bit_2

scoreboard players operation @s lg.bit += @s lg.bit_2
scoreboard players operation @s lg.bit -= .temp_bit lg.TEMP

################################### Stack trace
tellraw @a [{"text":"Output: "},{"color":"green","score":{"name":"@s","objective":"lg.bit"}},{"text":"\n"},{"color":"gold","text":"===================================="}]
################################### Stack trace
