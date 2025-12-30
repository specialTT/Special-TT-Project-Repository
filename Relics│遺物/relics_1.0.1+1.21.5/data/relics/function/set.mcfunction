$execute in $(LastDeathDimension) run tp @s ~ ~ ~
data modify entity @s Pos set from storage relics:storage LastDeathPos
data modify entity @s data.Inventory set from storage relics:storage Inventory
data modify entity @s data.Xp set from storage relics:storage Xp
data modify entity @s data.UUID set from storage relics:storage UUID
data modify storage relics:storage interaction_UUID set from entity @s UUID
function relics:summon with storage relics:storage
tag @s add relics