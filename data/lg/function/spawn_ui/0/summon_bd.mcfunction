#Set entity data
$summon block_display ~0.5 ~ ~ {UUID:[I;111613,120216,90306,62909],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-$(uiOffset)f,0f,0f],scale:[$(uiSize)f,$(uiSize)f,1f]},block_state:{Name:"minecraft:black_concrete"}}

#If the ui size < 26, only summon one hitbox
$execute unless score $uiSize lg.VAR matches 26.. run summon interaction ~0.5 ~ ~$(uiOffset) {Tags:["lg.uiHitbox"],width:$(uiSize),height:$(uiSize)}

#If the ui size > 25, summon the appropiate amount of hitboxes
$execute if score $uiSize lg.VAR matches 26.. positioned ~$(uiHitboxOffset) ~ ~ run function lg:spawn_ui/0/for_hitbox/init