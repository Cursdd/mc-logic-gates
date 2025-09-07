tp @s ~0.125 ~ ~-0.125
execute unless data entity @n[type=minecraft:block_display,tag=lg.marker] transformation{translation:[-0.1255f,0.0f,0.0f]} run data merge entity @n[type=minecraft:block_display,tag=lg.marker] {transformation:{translation:[-0.1255f,0.0f,0.0f]}}
execute as @n[type=minecraft:block_display,tag=lg.marker] unless data entity @s {Rotation:[360.0f,0.0f]} run rotate @s 360.0 0.0