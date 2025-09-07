#Kill blocks with a range
$execute as @e[tag=lg.uiElement] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{x:{min:$(x_min),max:$(x_max)},y:{min:$(y_min),max:$(y_max)},z:{min:$(z_min),max:$(z_max)}}}}} run kill @s

tellraw @s ["Filled From: [",{"color":"red","nbt":"break.x_min","storage":"lg:ui"},", ",{"color":"green","nbt":"break.y_min","storage":"lg:ui"},", ",{"color":"blue","nbt":"break.z_min","storage":"lg:ui"},{"text":"] \nTo: ["},{"color":"dark_red","nbt":"break.x_max","storage":"lg:ui"},", ",{"color":"dark_green","nbt":"break.y_max","storage":"lg:ui"},", ",{"color":"dark_blue","nbt":"break.z_max","storage":"lg:ui"},"]"]
scoreboard players reset @s lg.current_break_point