execute store result score @s XpLevel run experience query @s levels
execute store result score @s Xp run experience query @s points
execute if score @s XpLevel matches 1.. run scoreboard players add @s Xp 7
execute if score @s XpLevel matches 2.. run scoreboard players add @s Xp 9
execute if score @s XpLevel matches 3.. run scoreboard players add @s Xp 11
execute if score @s XpLevel matches 4.. run scoreboard players add @s Xp 13
execute if score @s XpLevel matches 5.. run scoreboard players add @s Xp 15
execute if score @s XpLevel matches 6.. run scoreboard players add @s Xp 17
execute if score @s XpLevel matches 7.. run scoreboard players add @s Xp 19
execute if score @s XpLevel matches 8.. run scoreboard players add @s Xp 21
execute if score @s XpLevel matches 9.. run scoreboard players add @s Xp 23
execute if score @s XpLevel matches 10.. run scoreboard players add @s Xp 25
execute if score @s XpLevel matches 11.. run scoreboard players add @s Xp 27
execute if score @s XpLevel matches 12.. run scoreboard players add @s Xp 29
execute if score @s XpLevel matches 13.. run scoreboard players add @s Xp 31
execute if score @s XpLevel matches 14.. run scoreboard players add @s Xp 33
execute if score @s XpLevel matches 15.. run scoreboard players add @s Xp 35
execute if score @s XpLevel matches 16.. run scoreboard players add @s Xp 37
execute if score @s XpLevel matches 17.. run scoreboard players add @s Xp 42
execute if score @s XpLevel matches 18.. run scoreboard players add @s Xp 47
execute if score @s XpLevel matches 19.. run scoreboard players add @s Xp 52
execute if score @s XpLevel matches 20.. run scoreboard players add @s Xp 57
execute if score @s XpLevel matches 21.. run scoreboard players add @s Xp 62
execute if score @s XpLevel matches 22.. run scoreboard players add @s Xp 67
execute if score @s XpLevel matches 23.. run scoreboard players add @s Xp 72
execute if score @s XpLevel matches 24.. run scoreboard players add @s Xp 77
execute if score @s XpLevel matches 25.. run scoreboard players add @s Xp 82
execute if score @s XpLevel matches 26.. run scoreboard players add @s Xp 87
execute if score @s XpLevel matches 27.. run scoreboard players add @s Xp 92
execute if score @s XpLevel matches 28.. run scoreboard players add @s Xp 97
execute if score @s XpLevel matches 29.. run scoreboard players add @s Xp 102
execute if score @s XpLevel matches 30.. run scoreboard players add @s Xp 107
execute if score @s XpLevel matches 31.. run scoreboard players add @s Xp 112
execute if score @s XpLevel matches 32.. run function relics:xplevel
execute store result storage relics:storage Xp int 1 run scoreboard players get @s Xp