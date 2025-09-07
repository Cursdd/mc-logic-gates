scoreboard players add @s lg.current_break_point 1

#Set point one
execute if score @s lg.current_break_point matches 1 run function lg:modify_ui/break/fill/get_pos_1

#Set point two
execute if score @s lg.current_break_point matches 2 run function lg:modify_ui/break/fill/get_pos_2

#Execute
execute if score @s lg.current_break_point matches 3 run function lg:modify_ui/break/fill/exec with storage lg:ui break

advancement revoke @s only lg:attack_interaction_fill