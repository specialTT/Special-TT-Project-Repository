scoreboard players remove @s XpLevel 31
scoreboard players set scale XpLevel 9
scoreboard players set 2 XpLevel 2
scoreboard players set An XpLevel 233
scoreboard players operation scale XpLevel *= @s XpLevel
scoreboard players operation An XpLevel += scale XpLevel
scoreboard players operation An XpLevel /= 2 XpLevel
scoreboard players operation An XpLevel *= @s XpLevel
scoreboard players operation @s Xp += An XpLevel