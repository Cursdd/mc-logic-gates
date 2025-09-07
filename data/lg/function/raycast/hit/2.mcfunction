tp @s ~0.125 ~ ~0.5
execute unless data entity @n[type=minecraft:block_display,tag=lg.marker] transformation{translation:[0.1250f,0.0f,0.0f]} run data merge entity @n[type=minecraft:block_display,tag=lg.marker] {transformation:{translation:[-0.1250f,0.0f,0.0f]}}
execute as @n[type=minecraft:block_display,tag=lg.marker] unless data entity @s {Rotation:[180.0f,0.0f]} run rotate @s 180.0 0.0