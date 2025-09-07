#Set item from player's held item
data modify storage lg:ui item set from entity @p[tag=lg.placing] SelectedItem.id
data modify entity @s block_state.Name set from storage lg:ui item

#Set offset from marker block
data modify entity @s transformation.translation set from entity @n[tag=lg.marker] transformation.translation

#Check which type of block it is

#Rods
execute if items entity @p[tag=lg.placing] weapon.mainhand #lg:rods run function lg:modify_ui/place/summon/wires/rod 

#Stairs
execute if items entity @p[tag=lg.placing] weapon.mainhand #lg:stairs run function lg:modify_ui/place/summon/wires/stair 

#Bulbs
execute if items entity @p[tag=lg.placing] weapon.mainhand #lg:bulbs run function lg:modify_ui/place/summon/wires/bulb 

#Grates
execute if items entity @p[tag=lg.placing] weapon.mainhand #lg:grates run function lg:modify_ui/place/summon/wires/grate 

#Lamp
execute if items entity @p[tag=lg.placing] weapon.mainhand minecraft:redstone_lamp run function lg:modify_ui/place/summon/wires/redstone_lamp

#Rotate
rotate @s ~ ~

tag @s remove temp