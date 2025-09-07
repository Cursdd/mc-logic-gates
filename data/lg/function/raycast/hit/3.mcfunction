tp @s ~-0.125 ~ ~0.125
execute as @n[type=minecraft:block_display,tag=lg.marker] unless data entity @s transformation{translation:[0.125f,0.0f,0.0f]} run data merge entity @s {transformation:{translation:[0.0f,0.0f,0.0f]}}
execute as @n[type=minecraft:block_display,tag=lg.marker] unless data entity @s {Rotation:[270.0f,0.0f]} run rotate @s 270.0 0.0