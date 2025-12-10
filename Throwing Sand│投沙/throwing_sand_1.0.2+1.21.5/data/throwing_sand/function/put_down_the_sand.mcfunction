scoreboard players set @s holding_sand_time 0
execute if items entity @s weapon.offhand sand[minecraft:item_model="sand_block"] run summon item ~ ~ ~ {Item:{id:"sand"}}
execute if items entity @s weapon.offhand red_sand[minecraft:item_model="red_sand_block"] run summon item ~ ~ ~ {Item:{id:"red_sand"}}
item replace entity @s weapon.offhand with minecraft:air
data modify entity @s equipment.offhand set from entity @s data.offhand
attribute @s minecraft:movement_speed modifier remove launch
attribute @s minecraft:follow_range modifier remove launch
kill @n[type=villager,tag=animated]
tag @s remove holding_sand