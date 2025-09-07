#Get the height and offset of the hitbox scaled down
execute store result storage lg:temp hitboxSizeY float 0.25 run scoreboard players operation $tuiSizeY lg.TEMP = $uiSizeY lg.TEMP
execute store result storage lg:temp hitboxOffsetY float 0.125 run scoreboard players get $uiSizeY lg.TEMP

#Find how far up the hitbox has to go with the formula (up = (uiSizeY/2 - uiSizeY + 25)/4)
scoreboard players operation $tuiSizeY lg.TEMP *= #1000 lg.CONST
scoreboard players operation $ttuiSizeY lg.TEMP = $tuiSizeY lg.TEMP

scoreboard players operation $tuiSizeY lg.TEMP /= #2 lg.CONST
scoreboard players operation $tuiSizeY lg.TEMP -= $ttuiSizeY lg.TEMP

execute store result storage lg:temp hitboxUp float 0.00025 run scoreboard players add $tuiSizeY lg.TEMP 25000

function lg:spawn_ui/2/for_hitbox/y/run_last with storage lg:temp