scoreboard players add @s lg.gate_orientation 1
execute if score @s lg.gate_orientation matches 3 run scoreboard players set @s lg.gate_orientation 1

execute if score @s lg.gate_orientation matches 1 run data merge storage lg:ui {Gate:{"orientation":"Vertical"}}
execute if score @s lg.gate_orientation matches 2 run data merge storage lg:ui {Gate:{"orientation":"Horizontal"}}