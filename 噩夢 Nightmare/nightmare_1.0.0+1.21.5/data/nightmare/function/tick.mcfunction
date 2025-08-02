item replace entity @e[type=phantom] weapon.mainhand with minecraft:stick[minecraft:enchantments={"nightmare:nightmare":1}]
execute as @e[type=phantom] run data modify entity @s drop_chances set value {mainhand:0f}
execute as @e[type=phantom,tag=!phantom] run attribute @s attack_damage base set 10
execute as @e[type=phantom,tag=!phantom] run attribute @s max_health base set 2
tag @e[type=phantom,tag=!phantom] add phantom
execute unless predicate {"condition":"time_check","value":{"min":12541,"max":23458}} run tag @e remove nightmare
execute as @e[tag=nightmare] if data entity @s sleeping_pos run function nightmare:inability_to_sleep
execute at @e[tag=nightmare] run particle minecraft:smoke ~ ~ ~ 0.2 1 0.2 0.05 2