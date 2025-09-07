execute as @a at @s if entity @e[tag=lg.uiHitbox,distance=..7] run function lg:raycast/init
execute as @a if items entity @s weapon.mainhand minecraft:stick[custom_data~{"lg.wrench":true}] at @n[tag=lg.marker] run function lg:modify_ui/edit/properties/show

execute as @a if score @s lg.wrench_cd matches 1.. run scoreboard players remove @s lg.wrench_cd 1
execute as @a unless score @s lg.ID = @s lg.ID run function lg:set_id