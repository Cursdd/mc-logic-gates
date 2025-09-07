#Stop raycast
scoreboard players set $raycast lg.VAR 71

#Summon a marker at the point the raycast hit
execute summon marker run function lg:raycast/hit/init