#Summon the interaction with the correct size
$summon interaction ~0.5 ~$(hitboxOffsetY) ~-$(hitboxOffsetX) {Tags:["lg.uiHitbox"],width:$(hitboxSizeX),height:$(hitboxSizeY)}

scoreboard players remove $uiSizeY lg.TEMP 25

#If ui size >= 25, don't modify the default values and summon another hitbox to the right
execute if score $uiSizeY lg.TEMP matches 25.. positioned ~ ~6.25 ~ run function lg:spawn_ui/2/for_hitbox/y/loop with storage lg:temp

#If 0 > ui size < 25 loop with the remainder
execute unless score $uiSizeY lg.TEMP matches 25.. if score $uiSizeY lg.TEMP matches 1.. run function lg:spawn_ui/2/for_hitbox/y/store_values