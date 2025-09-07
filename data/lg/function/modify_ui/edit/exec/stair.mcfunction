#Set rotation from storage
data modify entity @s block_state.Properties.facing set from storage lg:ui Rotation.stair

#Set stair half from storage
data modify entity @s block_state.Properties.half set from storage lg:ui Rotation.stair_half

#Remove tags (n = north, e = east, s = south, w = west)
tag @s remove in_n
tag @s remove in_s
tag @s remove in_w
tag @s remove in_e

#Append tag from storage
data modify entity @s Tags append from storage lg:ui Rotation.stair_tag1
data modify entity @s Tags append from storage lg:ui Rotation.stair_tag2