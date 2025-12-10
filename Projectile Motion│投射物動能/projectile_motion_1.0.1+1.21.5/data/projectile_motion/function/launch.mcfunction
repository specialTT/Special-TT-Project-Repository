data modify entity @s data.Motion set from entity @s Pos
$execute at @s run tp @s ^ ^ ^$(speed)
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
$execute at @s run tp @s ^ ^ ^-$(speed)
data modify entity @s Motion set from entity @s data.Motion