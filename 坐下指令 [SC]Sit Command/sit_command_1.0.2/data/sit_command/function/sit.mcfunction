execute if entity @s[nbt={OnGround:1b}] run execute summon minecraft:interaction run function sit_command:set_a_mob_being_ridden_by_the_player
execute if entity @s[nbt={OnGround:1b}] run ride @s mount @n[type=minecraft:interaction,tag=sit]
tag @s add sit
scoreboard players enable @a sit
scoreboard players set @s sit 0