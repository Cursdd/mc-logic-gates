tag @s add raycasting
execute anchored eyes positioned ^ ^ ^ run function lg:raycast/cast

#Show the rotation of the block you're holding. Put here so it doesn't spam it when you're randomly holding a rotateable item
execute if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{mainhand:{items:"minecraft:lightning_rod"}}}},{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{mainhand:{items:"minecraft:end_rod"}}}}]} run title @s actionbar ["Rod Rotation: ",{"color":"green","nbt":"Rotation.rod_display","storage":"lg:ui"}]
tag @s remove raycasting
scoreboard players reset $raycast lg.VAR