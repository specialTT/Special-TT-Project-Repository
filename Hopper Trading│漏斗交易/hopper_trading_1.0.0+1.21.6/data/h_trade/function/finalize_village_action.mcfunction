$summon item ~ ~ ~ {Item:$(Tempsell)}
playsound minecraft:entity.villager.yes neutral @a ~ ~ ~ 1 1
$execute store result score #uses h_temp run data get entity @s Offers.Recipes[$(temp_idx)].uses
scoreboard players add #uses h_temp 1
$execute store result entity @s Offers.Recipes[$(temp_idx)].uses int 1 run scoreboard players get #uses h_temp