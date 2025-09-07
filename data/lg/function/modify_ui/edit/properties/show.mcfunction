#Find the highlighted entity and give it a tag
tag @e[tag=lg.uiElement,tag=lg.highlighted] remove lg.highlighted
tag @n[tag=lg.uiElement,tag=!lg.highlighted,distance=..0.001] add lg.highlighted

#Display Rotation information
execute if entity @s[scores={lg.wrench_toggle=1}] run title @s actionbar ["Rod Rotation: ",{"color":"green","nbt":"Rotation.rod_display","storage":"lg:ui"}," Stair Inputs: ",{"color":"green","nbt":"Rotation.stair_display","storage":"lg:ui"}]

#Display highlighted entity information
execute if entity @s[scores={lg.wrench_toggle=2}] if entity @n[tag=lg.highlighted,tag=lg.rod] run title @s actionbar [{"color":"red","text":"Wire Type: "},{"color":"white","text":"Unidirectional Wire"},{"color":"gold","bold":true,"text":" | "},{"color":"green","text":"Direction: "},{"color":"white","entity":"@n[tag=lg.highlighted]","nbt":"CustomName"}]
execute if entity @s[scores={lg.wrench_toggle=2}] unless entity @n[tag=lg.highlighted] run title @s actionbar "No highlited entity"