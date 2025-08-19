scoreboard players set @s holding_sand_time 0
tag @s remove holding_sand
item replace entity @s weapon.offhand with minecraft:air
data modify entity @s equipment.offhand set from entity @s data.offhand
execute at @s run function throwing_sand:rotate with entity @s data
data modify entity @s data.Motion set from entity @s Pos
execute at @s run tp @s ^ ^ ^1.5
execute store result score @s for_motion_calculation run data get entity @s data.Motion[0] 10000
execute store result score @s for_motion_calculation_2 run data get entity @s Pos[0] 10000
scoreboard players operation @s for_motion_calculation_2 -= @s for_motion_calculation
execute store result entity @s data.Motion[0] double 0.0001 run scoreboard players get @s for_motion_calculation_2
execute store result score @s for_motion_calculation run data get entity @s data.Motion[1] 10000
execute store result score @s for_motion_calculation_2 run data get entity @s Pos[1] 10000
scoreboard players operation @s for_motion_calculation_2 -= @s for_motion_calculation
execute store result entity @s data.Motion[1] double 0.0001 run scoreboard players get @s for_motion_calculation_2
execute store result score @s for_motion_calculation run data get entity @s data.Motion[2] 10000
execute store result score @s for_motion_calculation_2 run data get entity @s Pos[2] 10000
scoreboard players operation @s for_motion_calculation_2 -= @s for_motion_calculation
execute store result entity @s data.Motion[2] double 0.0001 run scoreboard players get @s for_motion_calculation_2
execute at @s run tp @s ^ ^ ^-1.5
data modify storage throwing_sand:storage Motion set from entity @s data.Motion
data modify storage throwing_sand:storage attacker_UUID set from entity @s UUID
data modify storage throwing_sand:storage type_of_sand_to_throw set from entity @s data.type_of_sand_to_throw
execute at @s anchored eyes positioned ^ ^ ^0.5 summon arrow run function throwing_sand:set_arrow with storage throwing_sand:storage
execute at @s summon minecraft:block_display run function throwing_sand:set_falling_block with storage throwing_sand:storage
execute as @e[type=block_display,tag=throwing_sand] run function throwing_sand:tp_to_arrow with entity @s data
attribute @s minecraft:movement_speed modifier remove launch
attribute @s minecraft:follow_range modifier remove launch
data modify entity @s last_hurt_by_mob set from entity @s data.target_UUID