execute unless data entity @s data.Inventory[0].components."minecraft:enchantments"."minecraft:vanishing_curse" run data modify storage relics:storage Item set from entity @s data.Inventory[0]
execute unless data entity @s data.Inventory[0].components."minecraft:enchantments"."minecraft:vanishing_curse" run data modify storage relics:storage UUID set from entity @s data.UUID
execute unless data entity @s data.Inventory[0].components."minecraft:enchantments"."minecraft:vanishing_curse" run function relics:summon_item with storage relics:storage
data remove entity @s data.Inventory[0]
execute if data entity @s data.Inventory[0] run function relics:give