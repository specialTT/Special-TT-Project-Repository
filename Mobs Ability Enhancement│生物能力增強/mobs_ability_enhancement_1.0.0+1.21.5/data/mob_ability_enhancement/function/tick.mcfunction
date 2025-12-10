execute as @e[type=#mob_ability_enhancement:can_pick_up_loot_mob,tag=!mob_ability_enhancement] run data modify entity @s CanPickUpLoot set value 1b
execute as @e[type=#zombies,type=!zombie_horse,tag=!mob_ability_enhancement] run data modify entity @s CanBreakDoors set value 1b
tag @e[type=#mob_ability_enhancement:can_pick_up_loot_mob,tag=!mob_ability_enhancement] add mob_ability_enhancement