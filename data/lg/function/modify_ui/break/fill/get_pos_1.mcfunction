#Get the marker's current position
execute store result score @s lg.break.point_one.x run data get entity @n[tag=lg.marker] Pos[0] 100
execute store result score @s lg.break.point_one.y run data get entity @n[tag=lg.marker] Pos[1] 100
execute store result score @s lg.break.point_one.z run data get entity @n[tag=lg.marker] Pos[2] 100

tellraw @s ["Point One: [",{"color":"red","entity":"@n[tag=lg.marker]","nbt":"Pos[0]"},", ",{"color":"green","entity":"@n[tag=lg.marker]","nbt":"Pos[1]"},", ",{"color":"blue","entity":"@n[tag=lg.marker]","nbt":"Pos[2]"},"]"]