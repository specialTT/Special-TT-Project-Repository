execute as @a[gamemode=!creative,gamemode=!spectator] run attribute @s minecraft:block_interaction_range modifier add -2 -2 add_value
execute as @a[gamemode=!adventure,gamemode=!survival] run attribute @s minecraft:block_interaction_range modifier remove -2
execute as @a[gamemode=!creative,gamemode=!spectator] run attribute @s minecraft:entity_interaction_range modifier add -1.5 -1.5 add_value
execute as @a[gamemode=!adventure,gamemode=!survival] run attribute @s minecraft:entity_interaction_range modifier remove -1.5