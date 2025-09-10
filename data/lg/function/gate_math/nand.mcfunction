################################### Stack trace
tellraw @a [{"color":"gold","text":"====================================\n"},{"color":"aqua","text":"Found Gate: "},{"color":"green","text":"NAND\n"}, {"color":"white","text":"Wire ID: "},{"score":{"name":"@s","objective":"lg.ID"}},{"color":"white","text":"\nGate ID: "},{"score":{"name":"@s","objective":"lg.gate_ID"}}]
tellraw @a [{"text": "Input One: "},{"color": "gold", "score":{"name":"@s","objective":"lg.bit"}},{"text": " | Input Two: "},{"color": "gold", "score":{"name":"@s","objective":"lg.bit_2"}}]
################################### Stack trace

scoreboard players operation @s lg.bit *= @s lg.bit_2
scoreboard players operation @s lg.bit *= #-1 lg.CONST
scoreboard players add @s lg.bit 1

################################### Stack trace
tellraw @a [{"text":"Output: "},{"color":"green","score":{"name":"@s","objective":"lg.bit"}},{"text":"\n"},{"color":"gold","text":"===================================="}]
################################### Stack trace