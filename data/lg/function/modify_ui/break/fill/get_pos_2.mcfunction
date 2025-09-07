#Store the marker's positions
execute store result score @s lg.break.point_two.x run data get entity @n[tag=lg.marker] Pos[0] 100
execute store result score @s lg.break.point_two.y run data get entity @n[tag=lg.marker] Pos[1] 100
execute store result score @s lg.break.point_two.z run data get entity @n[tag=lg.marker] Pos[2] 100

#Swap larger positions with smaller ones
execute if score @s lg.break.point_one.x > @s lg.break.point_two.x run scoreboard players operation @s lg.break.point_one.x >< @s lg.break.point_two.x
execute if score @s lg.break.point_one.y > @s lg.break.point_two.y run scoreboard players operation @s lg.break.point_one.y >< @s lg.break.point_two.y
execute if score @s lg.break.point_one.z > @s lg.break.point_two.z run scoreboard players operation @s lg.break.point_one.z >< @s lg.break.point_two.z

#Store minimum and maximum
execute store result storage lg:ui break.x_min float 0.01 run scoreboard players get @s lg.break.point_one.x
execute store result storage lg:ui break.x_max float 0.01 run scoreboard players get @s lg.break.point_two.x

execute store result storage lg:ui break.y_min float 0.01 run scoreboard players get @s lg.break.point_one.y
execute store result storage lg:ui break.y_max float 0.01 run scoreboard players get @s lg.break.point_two.y

execute store result storage lg:ui break.z_min float 0.01 run scoreboard players get @s lg.break.point_one.z
execute store result storage lg:ui break.z_max float 0.01 run scoreboard players get @s lg.break.point_two.z

tellraw @s ["Point Two: [",{"color":"dark_red","entity":"@n[tag=lg.marker]","nbt":"Pos[0]"},", ",{"color":"dark_green","entity":"@n[tag=lg.marker]","nbt":"Pos[1]"},", ",{"color":"dark_blue","entity":"@n[tag=lg.marker]","nbt":"Pos[2]"},"]"]