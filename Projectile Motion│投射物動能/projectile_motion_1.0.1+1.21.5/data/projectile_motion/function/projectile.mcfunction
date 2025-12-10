$data modify storage projectile_motion:storage nbt set value $(nbt)
data modify storage projectile_motion:storage nbt.Rotation set from entity @s Rotation
data modify storage projectile_motion:storage nbt.Owner set from entity @s UUID
data modify storage projectile_motion:storage nbt.Motion set from entity @s Pos
$execute at @s run tp @s ^ ^ ^$(speed)
execute store result score @s for_motion_calculation run data get storage projectile_motion:storage nbt.Motion[0] 10000
execute store result score @s for_motion_calculation_2 run data get entity @s Pos[0] 10000
scoreboard players operation @s for_motion_calculation_2 -= @s for_motion_calculation
execute store result storage projectile_motion:storage nbt.Motion[0] double 0.0001 run scoreboard players get @s for_motion_calculation_2
execute store result score @s for_motion_calculation run data get storage projectile_motion:storage nbt.Motion[1] 10000
execute store result score @s for_motion_calculation_2 run data get entity @s Pos[1] 10000
scoreboard players operation @s for_motion_calculation_2 -= @s for_motion_calculation
execute store result storage projectile_motion:storage nbt.Motion[1] double 0.0001 run scoreboard players get @s for_motion_calculation_2
execute store result score @s for_motion_calculation run data get storage projectile_motion:storage nbt.Motion[2] 10000
execute store result score @s for_motion_calculation_2 run data get entity @s Pos[2] 10000
scoreboard players operation @s for_motion_calculation_2 -= @s for_motion_calculation
execute store result storage projectile_motion:storage nbt.Motion[2] double 0.0001 run scoreboard players get @s for_motion_calculation_2
$execute at @s run tp @s ^ ^ ^-$(speed)
$data modify storage projectile_motion:storage entity_type set value $(entity_type)
execute at @s anchored eyes positioned ^ ^ ^ run function projectile_motion:summon with storage projectile_motion:storage