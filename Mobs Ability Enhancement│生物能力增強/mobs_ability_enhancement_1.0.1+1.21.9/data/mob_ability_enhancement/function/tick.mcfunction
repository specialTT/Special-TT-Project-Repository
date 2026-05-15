execute as @e[type=#tag_lib:can_pick_up_loot_mobs,tag=!mob_ability_enhancement] run data modify entity @s CanPickUpLoot set value 1b
execute as @e[type=#zombies,type=!zombie_horse,type=!zoglin,tag=!mob_ability_enhancement] run data modify entity @s CanBreakDoors set value 1b
tag @e[type=#tag_lib:can_pick_up_loot_mobs,tag=!mob_ability_enhancement] add mob_ability_enhancement