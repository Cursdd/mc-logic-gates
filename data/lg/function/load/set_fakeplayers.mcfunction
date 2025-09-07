execute unless score $uiSize lg.VAR = $uiSize lg.VAR run scoreboard players set $uiSize lg.VAR 25

#Set constants
execute unless score #2 lg.CONST matches 2 run scoreboard players set #2 lg.CONST 2
execute unless score #4 lg.CONST matches 4 run scoreboard players set #4 lg.CONST 4
execute unless score #25 lg.CONST matches 25 run scoreboard players set #25 lg.CONST 25
execute unless score #26 lg.CONST matches 26 run scoreboard players set #26 lg.CONST 26
execute unless score #90 lg.CONST matches 90 run scoreboard players set #90 lg.CONST 90
execute unless score #125 lg.CONST matches 125 run scoreboard players set #125 lg.CONST 125
execute unless score #1000 lg.CONST matches 1000 run scoreboard players set #1000 lg.CONST 1000
execute unless score #9000 lg.CONST matches 9000 run scoreboard players set #9000 lg.CONST 9000
execute unless score #36000 lg.CONST matches 36000 run scoreboard players set #36000 lg.CONST 36000

execute as @a unless score @s lg.current_rotation = @s lg.current_rotation run scoreboard players set @s lg.current_rotation 1
execute as @a unless score @s lg.gate_orientation = @s lg.gate_orientation run scoreboard players set @s lg.gate_orientation 1
execute as @a unless score @s lg.wrench_toggle = @s lg.wrench_toggle run scoreboard players set @s lg.wrench_toggle 1

execute unless data storage lg:ui Rotation run data merge storage lg:ui {Rotation:{"rod":"up","stair":"west","stair_half":"bottom","rod_display":"North to South","stair_display":"North, East"}}