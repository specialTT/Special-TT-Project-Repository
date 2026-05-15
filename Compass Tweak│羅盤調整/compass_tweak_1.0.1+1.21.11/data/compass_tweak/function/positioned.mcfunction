$execute positioned $(x) $(y) $(z) unless entity @s[distance=..5] run tag @s add tp
execute unless entity @s[nbt={Dimension:"minecraft:overworld"}] run tag @s add tp
execute in minecraft:overworld as @s[tag=tp] run function compass_tweak:tp with storage compass_tweak:storage LastDeathLocation