data merge entity @s {Silent:1b,NoAI:1b}
effect give @s invisibility infinite 0 true
effect give @s resistance infinite 4 true
attribute @s minecraft:max_health base set 1
attribute @s minecraft:scale base set 0.1
tag @s add animated
execute as @e[type=villager,tag=animated] run data modify entity @s drop_chances set value {head:0f}
item replace entity @s armor.head with minecraft:stick[minecraft:enchantments={"throwing_sand:launch":1}]
data modify entity @s data.tp_to set from storage throwing_sand:storage attacker_UUID