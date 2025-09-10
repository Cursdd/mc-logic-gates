execute if entity @n[tag=lg.highlighted,tag=lg.starter] run tellraw @a "Removed starter tag"
execute if entity @n[tag=lg.highlighted,tag=!lg.starter] run tellraw @a "Added starter tag"

execute as @n[tag=lg.highlighted,tag=!lg.starter] run return run tag @s add lg.starter
execute as @n[tag=lg.highlighted,tag=lg.starter] run tag @s remove lg.starter
