################################### Stack trace
tellraw @a [{"text":"Stack Trace\n"},{"text":"|\n","color":"gold"},{"text":"|\n","color":"gold"},{"text":"|\n","color":"gold"},{"text":"|\n","color":"gold"},{"text":"|\n","color":"gold"},{"text":"|\n","color":"gold"},{"text":"|\n","color":"gold"},{"text":"|\n","color":"gold"},{"text":"|\n","color":"gold"},{"text":"|","color":"gold"}]
################################### Stack trace

tag @e[tag=lg.dirty] remove lg.dirty
tag @e[tag=lg.flooded] remove lg.flooded
tag @e[tag=lg.new_flood] remove lg.new_flood

execute as @e[tag=lg.starter] run function lg:run/set_bit
execute if entity @e[tag=lg.new_flood] run function lg:run/loop/promote