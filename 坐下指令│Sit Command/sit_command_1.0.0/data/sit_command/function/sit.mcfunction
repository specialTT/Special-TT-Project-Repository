execute summon minecraft:interaction run function sit_command:set_a_mob_being_ridden_by_the_player
ride @s mount @n[type=minecraft:interaction,tag=sit]
scoreboard players enable @a sit
scoreboard players set @s sit 0