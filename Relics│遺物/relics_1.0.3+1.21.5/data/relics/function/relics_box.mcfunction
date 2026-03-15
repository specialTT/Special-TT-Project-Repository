scoreboard players set @s death_count 0
data modify storage relics:storage Inventory set from entity @s Inventory
data modify storage relics:storage Inventory append from entity @s equipment.body
data modify storage relics:storage Inventory append from entity @s equipment.chest
data modify storage relics:storage Inventory append from entity @s equipment.feet
data modify storage relics:storage Inventory append from entity @s equipment.head
data modify storage relics:storage Inventory append from entity @s equipment.legs
data modify storage relics:storage Inventory append from entity @s equipment.offhand
data modify storage relics:storage Inventory append from entity @s equipment.saddle
data modify storage relics:storage LastDeathPos set from entity @s LastDeathLocation.pos
data modify storage relics:storage LastDeathDimension set from entity @s LastDeathLocation.dimension
data modify storage relics:storage UUID set from entity @s UUID
function relics:operations_xp
clear @s
experience set @s 0 levels
experience set @s 0 points
execute summon interaction run function relics:set with storage relics:storage