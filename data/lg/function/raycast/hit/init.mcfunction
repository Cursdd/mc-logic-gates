#Summon block display
scoreboard players operation $ID lg.ID = @p[tag=racasting] lg.ID
execute unless entity @n[type=block_display,tag=lg.marker,predicate=lg:matching_id] run summon block_display ~ ~ ~ {Tags:["lg.marker","temp"],teleport_duration:1.5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]},block_state:{Name:"minecraft:white_stained_glass"}}
scoreboard players operation @n[tag=lg.marker,tag=temp] lg.ID = $ID lg.ID
tag @n[tag=temp,tag=lg.marker] remove temp

#Offset based on player rotation
execute if score $yaw lg.TEMP matches 0 run function lg:raycast/hit/0
execute if score $yaw lg.TEMP matches 1 run function lg:raycast/hit/1
execute if score $yaw lg.TEMP matches 2 run function lg:raycast/hit/2
execute if score $yaw lg.TEMP matches 3 run function lg:raycast/hit/3

#Get marker position rounded to the nearest 0.25 step
data modify storage lg:raycast hitPoint set from entity @n[type=marker] Pos
execute store result storage lg:raycast hitPoint[0] double 0.25 run data get storage lg:raycast hitPoint[0] 4
execute store result storage lg:raycast hitPoint[1] double 0.25 run data get storage lg:raycast hitPoint[1] 4
execute store result storage lg:raycast hitPoint[2] double 0.25 run data get storage lg:raycast hitPoint[2] 4

#Teleport block display
data modify entity @n[type=block_display,tag=lg.marker] Pos set from storage lg:raycast hitPoint

kill @s