execute as @e[tag=!raycasting,type=interaction,dx=0,tag=lg.uiHitbox] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function lg:raycast/hit/summon_marker

scoreboard players add $raycast lg.VAR 1
#particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 0

execute if score $raycast lg.VAR matches ..70 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #lg:raypass run function lg:raycast/cast