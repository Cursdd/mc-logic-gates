scoreboard players add @s lg.rod_direction 1
execute if score @s lg.rod_direction matches 5 run scoreboard players set @s lg.rod_direction 1


#Set rod info
execute if score @s lg.rod_direction matches 1 run data merge storage lg:ui {Rotation:{"rod":"up","end_rod":"down","rod_tag":"nts","rod_display":"North to South"}}
execute if score @s lg.rod_direction matches 2 run data merge storage lg:ui {Rotation:{"rod":"west","end_rod":"east","rod_tag":"etw","rod_display":"East to West"}}
execute if score @s lg.rod_direction matches 3 run data merge storage lg:ui {Rotation:{"rod":"down","end_rod":"up","rod_tag":"stn","rod_display":"South to North"}}
execute if score @s lg.rod_direction matches 4 run data merge storage lg:ui {Rotation:{"rod":"east","end_rod":"west","rod_tag":"wte","rod_display":"West to East"}}
