#Set the temp ui size
scoreboard players operation $uiSizeX lg.TEMP = $uiSize lg.VAR

data merge storage lg:temp {"hitboxSizeX":6.25,"hitboxSizeY":6.25,"hitboxOffsetX":3.125,"hitboxOffsetY":0}

#Start X loop
function lg:spawn_ui/0/for_hitbox/x/loop

scoreboard players reset $ttuiSizeY
scoreboard players reset $tuiSizeY
scoreboard players reset $tuiSizeX
scoreboard players reset $uiSizeY
scoreboard players reset $uiSizeX