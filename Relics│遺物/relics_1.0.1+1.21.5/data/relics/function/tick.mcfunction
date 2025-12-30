gamerule keepInventory true
execute as @a[scores={death_count=1..}] run function relics:relics_box
execute as @e[type=item_display,tag=relics] at @s run tp @s ~ ~ ~ ~4 ~
execute as @e[type=item_display,tag=relics] run function relics:kill with entity @s data
execute as @e[type=block_display,tag=relics] run function relics:kill with entity @s data
execute at @e[type=block_display,tag=relics] run particle end_rod ~0.5 ~0.5 ~0.5 0 0 0 0.05 1
execute as @e[type=interaction,tag=relics] if data entity @s attack run function relics:click with entity @s data