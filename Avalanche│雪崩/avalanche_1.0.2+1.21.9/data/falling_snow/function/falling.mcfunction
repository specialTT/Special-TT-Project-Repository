execute as @e[type=falling_block,tag=falling_snow] at @s run function falling_snow:layers
execute as @e[type=item] if items entity @s container.0 snowball run function falling_snow:item