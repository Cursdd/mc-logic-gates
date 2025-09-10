#set bits 1 and 2
execute unless entity @s[tag=lg.dirty] run function lg:run/update_gate_outputs/first_hit
execute if entity @s[tag=lg.dirty] run function lg:run/update_gate_outputs/second_hit

#Unless the gate has been computed (second hit) give it the dirty tag
tag @s[tag=!lg.computed] add lg.dirty