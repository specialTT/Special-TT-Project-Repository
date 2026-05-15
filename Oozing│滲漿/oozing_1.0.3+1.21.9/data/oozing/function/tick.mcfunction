item replace entity @e[type=slime] weapon.mainhand with minecraft:stick[minecraft:enchantments={"oozing:oozing":1}]
execute as @e[type=slime] run data modify entity @s drop_chances set value {mainhand:0f}
execute as @e[type=#tag_lib:mobs,tag=oozing] run attribute @s movement_speed modifier remove oozing
execute as @e[type=#tag_lib:mobs,tag=oozing] run attribute @s jump_strength modifier remove oozing
execute as @e[type=#tag_lib:mobs,tag=oozing] run tag @s remove oozing
execute unless data storage oozing:storage {enhanced_oozing:0b} as @e[type=#tag_lib:mobs] if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{oozing:{}}}} run function oozing:oozing