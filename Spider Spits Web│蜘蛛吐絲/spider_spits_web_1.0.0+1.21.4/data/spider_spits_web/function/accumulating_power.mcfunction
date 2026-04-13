scoreboard players set @s spider_accumulating_power 10
execute store result score @s spider_cooldown run random value 210..310
attribute @s movement_speed modifier add spits_web -1 add_multiplied_total