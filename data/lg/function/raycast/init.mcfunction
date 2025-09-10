tag @s add raycasting
execute anchored eyes positioned ^ ^ ^ run function lg:raycast/cast

#Show the rotation of the block you're holding. Put here so it doesn't spam it when you're randomly holding a rotateable item
execute if items entity @s weapon.mainhand #lg:rods unless items entity @s weapon.offhand minecraft:stick[custom_data~{"lg.wrench":true}] run title @s actionbar ["Rod Direction: ",{"color":"green","nbt":"Rotation.rod_display","storage":"lg:ui"}]
execute if items entity @s weapon.mainhand #lg:stairs unless items entity @s weapon.offhand minecraft:stick[custom_data~{"lg.wrench":true}] run title @s actionbar ["Stair Inputs: ",{"color":"green","nbt":"Rotation.stair_display","storage":"lg:ui"}]
execute if items entity @s weapon.mainhand minecraft:sea_lantern unless items entity @s weapon.offhand minecraft:stick[custom_data~{"lg.wrench":true}] run title @s actionbar ["Gate Type: ",{"color":"green","nbt":"Gate.type","storage":"lg:ui"}]

tag @s remove raycasting
scoreboard players reset $raycast lg.VAR