execute store result score @s XpLevel run experience query @s levels
execute store result score @s Xp run experience query @s points
execute if score @s XpLevel matches 1.. run function relics:xplevel
execute store result storage relics:storage Xp int 1 run scoreboard players get @s Xp