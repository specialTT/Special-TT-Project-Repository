attribute @s minecraft:jump_strength modifier add powder_snow -0.35 add_multiplied_base
execute store result score @s freeze_tick run data get entity @s TicksFrozen
scoreboard players add @s freeze_tick 3
execute if score @s freeze_tick matches 142.. run scoreboard players set @s freeze_tick 142
execute store result entity @s TicksFrozen int 1 run scoreboard players get @s freeze_tick
tag @s add frozen_in_the_tick