tag @s add lg.placing

#execute at @n[tag=lg.marker] if entity @n[tag=lg.uiElement,distance=..0.0001] run say There's another wire here

#Summon a new block at the marker
execute at @n[tag=lg.marker] unless entity @n[tag=lg.uiElement,distance=..0.0001] if items entity @s weapon.mainhand * run function lg:modify_ui/place/summon/init

tag @s remove lg.placing
tag @e remove lg.searched
advancement revoke @s only lg:used_interaction