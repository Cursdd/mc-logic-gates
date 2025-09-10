#Set stair/rod score
execute unless items entity @s weapon.offhand minecraft:stick[custom_data~{"lg.wrench":true}] run function lg:modify_ui/edit/rotateable_wires/global

#Modify stairs/rods
execute unless items entity @s weapon.offhand minecraft:stick[custom_data~{"lg.wrench":true}] at @n[tag=lg.marker] as @n[distance=..0.001,tag=lg.rod] run function lg:modify_ui/edit/exec/rod
execute unless items entity @s weapon.offhand minecraft:stick[custom_data~{"lg.wrench":true}] at @n[tag=lg.marker] as @n[distance=..0.001,tag=lg.stair] run function lg:modify_ui/edit/exec/stair

#Set gate orientation (up / down, east / west)
execute if items entity @s weapon.offhand minecraft:stick[custom_data~{"lg.wrench":true}] if items entity @s weapon.mainhand minecraft:sea_lantern \
if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sprint:1b}}}} run \
function lg:modify_ui/edit/gates/orientation

#Set gate type
execute if items entity @s weapon.offhand minecraft:stick[custom_data~{"lg.wrench":true}] if items entity @s weapon.mainhand minecraft:sea_lantern \
unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sprint:1b}}}} run \
function lg:modify_ui/edit/gates/type

#Rotate Stairs
execute if items entity @s weapon.offhand minecraft:stick[custom_data~{"lg.wrench":true}] if items entity @s weapon.mainhand #lg:stairs run \
function lg:modify_ui/edit/rotateable_wires/stair

#Rotate Rods
execute if items entity @s weapon.offhand minecraft:stick[custom_data~{"lg.wrench":true}] if items entity @s weapon.mainhand #lg:rods run \
function lg:modify_ui/edit/rotateable_wires/rod

tag @e remove lg.searched

advancement revoke @s only lg:attack_interaction_modify