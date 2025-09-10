scoreboard players add @s lg.gate_type 1
execute if score @s lg.gate_type matches 9 run scoreboard players set @s lg.gate_type 1

execute if score @s lg.gate_type matches 1 run data merge storage lg:ui {Gate:{"type":"AND","tag":"lg.AND","block":"minecraft:lime_wool"}}
execute if score @s lg.gate_type matches 2 run data merge storage lg:ui {Gate:{"type":"BUT","tag":"lg.BUT","block":"minecraft:magenta_wool"}}
execute if score @s lg.gate_type matches 3 run data merge storage lg:ui {Gate:{"type":"NAND","tag":"lg.NAND","block":"minecraft:orange_wool"}}
execute if score @s lg.gate_type matches 4 run data merge storage lg:ui {Gate:{"type":"NOR","tag":"lg.NOR","block":"minecraft:yellow_wool"}}
execute if score @s lg.gate_type matches 5 run data merge storage lg:ui {Gate:{"type":"NOT","tag":"lg.NOT","block":"minecraft:red_wool"}}
execute if score @s lg.gate_type matches 6 run data merge storage lg:ui {Gate:{"type":"OR","tag":"lg.OR","block":"minecraft:cyan_wool"}}
execute if score @s lg.gate_type matches 7 run data merge storage lg:ui {Gate:{"type":"XNOR","tag":"lg.XNOR","block":"minecraft:purple_wool"}}
execute if score @s lg.gate_type matches 8 run data merge storage lg:ui {Gate:{"type":"XOR","tag":"lg.XOR","block":"minecraft:blue_wool"}}
