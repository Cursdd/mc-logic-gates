tag @s add lg.wire
tag @s add lg.stair
tag @s add lg.rotateable

data modify entity @s block_state.Properties.half set from storage lg:ui Rotation.stair_half
data modify entity @s block_state.Properties.facing set from storage lg:ui Rotation.stair
data modify entity @s Tags append from storage lg:ui Rotation.stair_tag1
data modify entity @s Tags append from storage lg:ui Rotation.stair_tag2

function lg:bfs/find_root/get_type