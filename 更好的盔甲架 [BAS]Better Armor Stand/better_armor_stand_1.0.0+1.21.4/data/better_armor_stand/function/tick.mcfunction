execute as @e[type=armor_stand,tag=!has_arms] run data modify entity @s ShowArms set value 1b
execute as @e[type=armor_stand,tag=!has_arms] run tag @s add has_arms
execute as @a store result score @s armor_stand_interaction_distance run attribute @s minecraft:entity_interaction_range get 1000
scoreboard players add @a armor_stand_interaction_distance 250
execute as @e[type=armor_stand,nbt={Small:0b}] store result score @s size_x store result score @s size_y run attribute @s minecraft:scale get 1000
execute as @e[type=armor_stand,nbt={Small:1b}] store result score @s size_x store result score @s size_y run attribute @s minecraft:scale get 500
execute as @e[type=armor_stand] run scoreboard players set @s value 1995
execute as @e[type=armor_stand] run scoreboard players operation @s size_y *= @s value
execute as @e[type=armor_stand] run scoreboard players set @s value 520
execute as @e[type=armor_stand] run scoreboard players operation @s size_x *= @s value
execute as @a at @s if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_sneaking:true},type_specific:{type:"player",looking_at:{type:"armor_stand"}}}} run function better_armor_stand:convert_fractions_to_storage
execute as @e[type=interaction,tag=armor_stand_interaction] at @s unless entity @n[type=armor_stand,distance=0] run kill @s
execute as @e[type=interaction,tag=armor_stand_interaction] at @s run function better_armor_stand:there_is_a_player_looking_at_me with entity @s
execute as @e[type=interaction,tag=armor_stand_interaction] at @s on attacker run function better_armor_stand:left_click_detection
execute as @e[type=interaction,tag=armor_stand_interaction] at @s on target run function better_armor_stand:right_click_detection
execute as @e[type=armor_stand] unless entity @s[scores={pose=0..12}] run scoreboard players set @s pose 0