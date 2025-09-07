#Summon a block display with the fallback of red concrete
summon block_display ~ ~ ~ {Tags:["temp","lg.uiElement"],CustomName:"",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]},block_state:{Name:"minecraft:red_concrete"}}

#Modify data
execute as @n[tag=temp] run function lg:modify_ui/place/summon/modify