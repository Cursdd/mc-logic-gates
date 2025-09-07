#Kill the block display
kill 0001b3fd-0001-d598-0001-60c20000f5bd

#Kill the interaction(s)
kill @e[type=interaction,tag=lg.uiHitbox]

#Find the ui size, and offset
execute store result storage lg:temp uiSize float 0.25 run scoreboard players operation $uiSize lg.TEMP = $uiSize lg.VAR
execute store result storage lg:temp uiOffset float 0.005 run data get storage lg:temp uiSize 100

#Calculate how leftward the hitbox has to go when starting the for loop
scoreboard players remove $uiSize lg.TEMP 25
execute store result storage lg:temp uiHitboxOffset float 0.125 run scoreboard players get $uiSize lg.TEMP

#Get player yaw rounded to the nearest cardinal direction divided by 90
execute store result score $yaw lg.TEMP run data get entity @s Rotation[0] 100

scoreboard players add $yaw lg.TEMP 36000
scoreboard players operation $yaw lg.TEMP %= #36000 lg.CONST
scoreboard players add $yaw lg.TEMP 4500

scoreboard players operation $yaw lg.TEMP /= #9000 lg.CONST

#Modulo so that 360 degress (represented by 4) = 0 degrees
execute store result storage lg:temp yaw int 1 run scoreboard players operation $yaw lg.TEMP %= #4 lg.CONST

#Summon UI based on player yaw
execute rotated ~ 0 positioned ^ ^ ^3 align xyz run function lg:spawn_ui/get_rotation with storage lg:temp

scoreboard players reset $uiSize lg.TEMP