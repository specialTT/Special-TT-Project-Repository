scoreboard players set @s cooldown_of_throwing_sand 40
execute at @s as @e[distance=0..16] run function throwing_sand:find_attack_target
data modify entity @s data.offhand set from entity @s equipment.offhand
$item replace entity @s weapon.offhand with minecraft:$(type_of_sand_to_throw)[minecraft:item_model="$(type_of_sand_to_throw)_block"]
attribute @s minecraft:movement_speed modifier add launch -1 add_multiplied_total
tag @s add holding_sand
data modify storage throwing_sand:storage attacker_UUID set from entity @s UUID
attribute @s minecraft:follow_range modifier add launch -1 add_multiplied_total
execute at @s summon villager run function throwing_sand:set_animated_entity
data modify entity @s last_hurt_by_mob set from entity @n[type=villager,tag=animated] UUID