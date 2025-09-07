#Set rotation from storage
execute unless data entity @s block_state{Name:"minecraft:end_rod"} run data modify entity @s block_state.Properties.facing set from storage lg:ui Rotation.rod
execute if data entity @s block_state{Name:"minecraft:end_rod"} run data modify entity @s block_state.Properties.facing set from storage lg:ui Rotation.end_rod

#Set end rod displayed rotation
data modify entity @s CustomName set from storage lg:ui Rotation.rod_display

#Remove tags (n = north, e = east, s = south, w = west)
tag @s remove nts
tag @s remove stn
tag @s remove etw
tag @s remove wte

#Append tag from storage
data modify entity @s Tags append from storage lg:ui Rotation.rod_tag