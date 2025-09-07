#Get the width and offset of the hitbox scaled down
execute store result storage lg:temp hitboxSizeX float 0.25 run scoreboard players operation $tuiSizeX lg.TEMP = $uiSizeX lg.TEMP
execute store result storage lg:temp hitboxOffsetX float 0.125 run scoreboard players get $uiSizeX lg.TEMP

#Find how far right the hitbox has to go
scoreboard players operation $tuiSizeX lg.TEMP *= #125 lg.CONST
execute store result storage lg:temp hitboxRight float 0.001 run scoreboard players add $tuiSizeX lg.TEMP 3125

function lg:spawn_ui/1/for_hitbox/x/run_last with storage lg:temp