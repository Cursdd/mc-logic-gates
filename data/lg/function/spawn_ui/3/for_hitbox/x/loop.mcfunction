#Start Y loop
scoreboard players remove $uiSizeX lg.TEMP 25
scoreboard players operation $uiSizeY lg.TEMP = $uiSize lg.VAR
data merge storage lg:temp {"hitboxSizeY":6.25,"hitboxOffsetY":0}

function lg:spawn_ui/3/for_hitbox/y/loop with storage lg:temp

#If ui size >= 25, don't modify the default values and summon another hitbox to the right
execute if score $uiSizeX lg.TEMP matches 25.. positioned ~ ~ ~6.25 run function lg:spawn_ui/3/for_hitbox/x/loop

#If 0 > ui size < 25 loop with the remainder
execute unless score $uiSizeX lg.TEMP matches 25.. if score $uiSizeX lg.TEMP matches 1.. run function lg:spawn_ui/3/for_hitbox/x/store_values