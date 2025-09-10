#Find the highlighted entity and give it a tag
tag @e[tag=lg.uiElement,tag=lg.highlighted] remove lg.highlighted
tag @n[tag=lg.uiElement,tag=!lg.highlighted,distance=..0.001] add lg.highlighted

#Display Rotation information
execute if entity @s[scores={lg.wrench_toggle=1}] run title @s actionbar ["Rod Direction: ",{"color":"green","nbt":"Rotation.rod_display","storage":"lg:ui"}," Stair Inputs: ",{"color":"green","nbt":"Rotation.stair_display","storage":"lg:ui"}," Gate Orientation: ",{"color":"green","nbt":"Gate.orientation","storage":"lg:ui"}," Gate Type: ",{"color":"green","nbt":"Gate.type","storage":"lg:ui"}]

#Display highlighted entity information
execute if entity @s[scores={lg.wrench_toggle=2}] if entity @n[tag=lg.highlighted,tag=lg.rod] run title @s actionbar [{"color":"red","text":"Wire Type: "},{"color":"white","text":"Unidirectional Wire"},{"color":"gold","bold":true,"text":" | "},{"color":"green","text":"Direction: "},{"color":"white","entity":"@n[tag=lg.highlighted]","nbt":"CustomName"}]
execute if entity @s[scores={lg.wrench_toggle=2}] if entity @n[tag=lg.highlighted,tag=lg.stair] run title @s actionbar [{"color":"red","text":"Wire Type: "},{"color":"white","text":"90° Turn"},{"color":"gold","bold":true,"text":" | "},{"color":"green","text":"Inputs: "},{"color":"white","entity":"@n[tag=lg.highlighted]","nbt":"CustomName"}]
execute if entity @s[scores={lg.wrench_toggle=2}] if entity @n[tag=lg.highlighted,tag=lg.buffer] run title @s actionbar [{"color":"red","text":"Wire Type: "},{"color":"white","text":"Buffer"},{"bold":true,"color":"gold","text":" | "},{"color":"green","text":"Wire ID: "},{"color":"white","score":{"name":"@n[tag=lg.highlighted]","objective":"lg.ID"}}]

execute if entity @s[scores={lg.wrench_toggle=2}] if entity @n[tag=lg.highlighted,tag=lg.gate_input] run title @s actionbar [{"color":"red","text":"Wire Type: "},{"color":"white","text":"Gate Input"},{"bold":true,"color":"gold","text":" | "},{"color":"green","text":"Linked Wire ID: "},{"color":"white","score":{"name":"@n[tag=lg.highlighted]","objective":"lg.ID"}},{"bold":true,"color":"gold","text":" | "},{"color":"blue","text":"Gate ID: "},{"color":"white","score":{"name":"@n[tag=lg.highlighted]","objective":"lg.gate_ID"}}]
execute if entity @s[scores={lg.wrench_toggle=2}] if entity @n[tag=lg.highlighted,tag=lg.gate_output] run title @s actionbar [{"color":"red","text":"Wire Type: "},{"color":"white","text":"Gate Output"},{"bold":true,"color":"gold","text":" | "},{"color":"green","text":"Wire ID: "},{"color":"white","score":{"name":"@n[tag=lg.highlighted]","objective":"lg.ID"}},{"bold":true,"color":"gold","text":" | "},{"color":"blue","text":"Gate ID: "},{"color":"white","score":{"name":"@n[tag=lg.highlighted]","objective":"lg.gate_ID"}}]

execute if entity @s[scores={lg.wrench_toggle=2}] unless entity @n[tag=lg.highlighted] run title @s actionbar "No highlited entity"