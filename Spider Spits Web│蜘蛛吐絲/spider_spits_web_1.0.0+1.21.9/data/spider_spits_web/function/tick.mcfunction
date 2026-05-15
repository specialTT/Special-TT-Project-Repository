execute as @e[type=#spider_spits_web:spiders] unless score @s spider_cooldown matches -2147483648..2147483647 run scoreboard players set @s spider_cooldown 0
execute as @e[type=#spider_spits_web:spiders] unless score @s spider_accumulating_power matches -2147483648..2147483647 run scoreboard players set @s spider_accumulating_power 0
execute as @e[type=#spider_spits_web:spiders] unless items entity @s weapon.mainhand stick[enchantments={"spider_spits_web:double_damage":1}] run item replace entity @s weapon.mainhand with stick[enchantments={"spider_spits_web:double_damage":1}]
execute as @e[type=#spider_spits_web:spiders] run data modify entity @s drop_chances.mainhand set value 0
execute as @e[type=#spider_spits_web:spiders,scores={spider_accumulating_power=1..}] unless predicate {condition:"entity_properties",entity:"this",predicate:{targeted_entity:{}}} run attribute @s movement_speed modifier remove minecraft:spits_web
execute as @e[type=#spider_spits_web:spiders,scores={spider_accumulating_power=1..}] unless predicate {condition:"entity_properties",entity:"this",predicate:{targeted_entity:{}}} run scoreboard players set @s spider_accumulating_power 0
scoreboard players remove @e[type=#spider_spits_web:spiders,scores={spider_cooldown=1..}] spider_cooldown 1
scoreboard players remove @e[type=#spider_spits_web:spiders,scores={spider_accumulating_power=1..}] spider_accumulating_power 1
scoreboard players remove @e[type=snowball,scores={web_time_left=1..}] web_time_left 1
execute as @e[type=#spider_spits_web:spiders,scores={spider_cooldown=..0}] if predicate {condition:"entity_properties",entity:"this",predicate:{targeted_entity:{}}} run function spider_spits_web:accumulating_power
execute as @e[type=#spider_spits_web:spiders,scores={spider_accumulating_power=1}] run function spider_spits_web:spits_web with entity @s
execute as @e[type=marker,tag=web] unless predicate {condition:"entity_properties",entity:"this",predicate:{vehicle:{type:"snowball",nbt:"{Tags:[\"web\"]}"}}} at @s run function spider_spits_web:web_hit with entity @s data
execute as @e[type=marker,tag=web] unless predicate {condition:"entity_properties",entity:"this",predicate:{vehicle:{type:"snowball",nbt:"{Tags:[\"web\"]}"}}} run kill @s