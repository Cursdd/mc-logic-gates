tag @s add lg.wire
tag @s add lg.rod
tag @s add lg.rotateable

data modify entity @s block_state.Name set from entity @p[tag=placing] SelectedItem.id

#Set rotation from storage
execute unless data entity @s block_state{Name:"minecraft:end_rod"} run data modify entity @s block_state.Properties.facing set from storage lg:ui Rotation.rod
execute if data entity @s block_state{Name:"minecraft:end_rod"} run data modify entity @s block_state.Properties.facing set from storage lg:ui Rotation.end_rod

#Set rod displayed rotation and tags
data modify entity @s CustomName set from storage lg:ui Rotation.rod_display
data modify entity @s Tags append from storage lg:ui Rotation.rod_tag

#Set ID and start flood fill at root
function lg:bfs/find_root/get_type