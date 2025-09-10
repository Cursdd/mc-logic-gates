execute as @e[tag=lg.new_flood,tag=!lg.computing,tag=!lg.flooded] run function lg:run/loop/run

execute if entity @e[tag=lg.new_flood] run function lg:run/loop/promote