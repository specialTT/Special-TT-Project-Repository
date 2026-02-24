execute as @e[type=item] if items entity @s container.0 command_block[custom_data={block:"lava"}] at @s run setblock ~ ~ ~ lava
execute as @e[type=item] if items entity @s container.0 command_block[custom_data={block:"lava"}] at @s run kill @s
execute as @e[type=item] if items entity @s container.0 command_block[custom_data={block:"powder_snow"}] at @s run setblock ~ ~ ~ powder_snow
execute as @e[type=item] if items entity @s container.0 command_block[custom_data={block:"powder_snow"}] at @s run kill @s
execute as @e[type=item] if items entity @s container.0 command_block[custom_data={block:"water"}] at @s run setblock ~ ~ ~ water
execute as @e[type=item] if items entity @s container.0 command_block[custom_data={block:"water"}] at @s run kill @s
execute as @e[type=marker,tag=lava_cauldron] at @s unless block ~ ~ ~ lava_cauldron run function cauldron_optimization:set {block:"lava"}
execute as @e[type=marker,tag=powder_snow_cauldron] at @s unless block ~ ~ ~ powder_snow_cauldron run function cauldron_optimization:set {block:"powder_snow"}
execute as @e[type=marker,tag=water_cauldron] at @s unless block ~ ~ ~ water_cauldron run function cauldron_optimization:set {block:"water"}
execute as @a store result score @s distance run attribute @s minecraft:block_interaction_range get
scoreboard players add @a distance 1
execute as @a at @s anchored eyes positioned ^ ^ ^ run function cauldron_optimization:find_cauldron