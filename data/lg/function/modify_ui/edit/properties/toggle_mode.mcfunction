scoreboard players set @s lg.wrench_cd 5
scoreboard players add @s lg.wrench_toggle 1
execute if score @s lg.wrench_toggle matches 3 run scoreboard players set @s lg.wrench_toggle 1

execute if score @s lg.wrench_toggle matches 1 run say Modify Mode
execute if score @s lg.wrench_toggle matches 2 run say Entity Info Mode

advancement revoke @s only lg:toggle_wrench_display
advancement revoke @s only lg:used_interaction_toggle_wrench_display