tag @s add armor_stand_interaction
execute store result entity @s height float 0.000001 run scoreboard players get @n size_y
execute store result entity @s width float 0.000001 run scoreboard players get @n size_x
data modify entity @s response set value 1b
data modify entity @s data.armor_stand_UUID set from entity @n[type=armor_stand] UUID