scoreboard players add @s lg.stair_rotation 1
execute if score @s lg.stair_rotation matches 5 run scoreboard players set @s lg.stair_rotation 1

execute if score @s lg.stair_rotation matches 1 run data merge storage lg:ui {Rotation:{"stair":"west","stair_tag1":"in_n","stair_tag2":"in_w","stair_half":"bottom","stair_display":"North, West"}}
execute if score @s lg.stair_rotation matches 2 run data merge storage lg:ui {Rotation:{"stair":"east","stair_tag1":"in_n","stair_tag2":"in_e","stair_half":"bottom","stair_display":"North, East"}}
execute if score @s lg.stair_rotation matches 3 run data merge storage lg:ui {Rotation:{"stair":"west","stair_tag1":"in_s","stair_tag2":"in_w","stair_half":"top","stair_display":"South, West"}}
execute if score @s lg.stair_rotation matches 4 run data merge storage lg:ui {Rotation:{"stair":"east","stair_tag1":"in_s","stair_tag2":"in_e","stair_half":"top","stair_display":"South, East"}}