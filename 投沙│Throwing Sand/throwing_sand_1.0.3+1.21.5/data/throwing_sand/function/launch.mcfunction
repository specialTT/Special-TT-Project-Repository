scoreboard players set @s holding_sand_time 0
tag @s remove holding_sand
item replace entity @s weapon.offhand with minecraft:air
data modify entity @s equipment.offhand set from entity @s data.offhand
execute at @s run function throwing_sand:rotate with entity @s data
function throwing_sand:summon_sand with entity @s data
attribute @s minecraft:movement_speed modifier remove launch
attribute @s minecraft:follow_range modifier remove launch
data modify entity @s last_hurt_by_mob set from entity @s data.target_UUID