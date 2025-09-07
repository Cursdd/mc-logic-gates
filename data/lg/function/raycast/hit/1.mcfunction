tp @s ~0.5 ~ ~0.125
execute as @n[type=minecraft:block_display,tag=lg.marker] unless data entity @s transformation{translation:[-0.125f,0.0f,0.0f]} run data merge entity @s {transformation:{translation:[-0.125f,0.0f,0.0f]}}
execute as @n[type=minecraft:block_display,tag=lg.marker] unless data entity @s {Rotation:[90.0f,0.0f]} run rotate @s 90.0 0.0