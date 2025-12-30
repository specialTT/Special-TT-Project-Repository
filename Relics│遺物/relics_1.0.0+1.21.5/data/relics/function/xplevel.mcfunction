scoreboard players add @s Xp 5
execute if score @s XpLevel matches 32.. run scoreboard players operation operations_x4 XpLevel = @s XpLevel
execute if score @s XpLevel matches 17.. run scoreboard players operation operations_x3 XpLevel = @s XpLevel
scoreboard players operation operations_x2 XpLevel = @s XpLevel
execute if score @s XpLevel matches 32.. run scoreboard players remove operations_x4 XpLevel 31
execute if score @s XpLevel matches 17.. run scoreboard players remove operations_x3 XpLevel 16
execute if score @s XpLevel matches 32.. run scoreboard players set scale XpLevel 4
execute if score @s XpLevel matches 32.. run scoreboard players operation operations_x4 XpLevel *= scale XpLevel
execute if score @s XpLevel matches 32.. run scoreboard players operation @s Xp += operations_x4 XpLevel
execute if score @s XpLevel matches 17.. run scoreboard players set scale XpLevel 3
execute if score @s XpLevel matches 17.. run scoreboard players operation operations_x3 XpLevel *= scale XpLevel
execute if score @s XpLevel matches 17.. run scoreboard players operation @s Xp += operations_x3 XpLevel
scoreboard players set scale XpLevel 2
scoreboard players operation operations_x2 XpLevel *= scale XpLevel
scoreboard players operation @s Xp += operations_x2 XpLevel
scoreboard players remove @s XpLevel 1
execute if score @s XpLevel matches 1.. run function relics:xplevel