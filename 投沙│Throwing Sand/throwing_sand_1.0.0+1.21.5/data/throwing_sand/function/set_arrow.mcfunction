$data modify entity @s Motion set value $(Motion)
data modify entity @s weapon set value {id:"bow",components:{"minecraft:enchantments":{"throwing_sand:throwing_sand":1}}}
data modify storage throwing_sand:storage arrow_UUID set from entity @s UUID
$data modify entity @s Owner set value $(attacker_UUID)
tag @s add throwing_sand
tag @s add silent
$data modify entity @s data.type_of_sand_to_throw set value "minecraft:$(type_of_sand_to_throw)"