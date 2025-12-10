execute if items entity @s weapon.mainhand chest on vehicle summon chest_minecart run tp @s @n[type=minecart]
execute if items entity @s weapon.mainhand hopper on vehicle summon hopper_minecart run tp @s @n[type=minecart]
execute if items entity @s weapon.mainhand tnt on vehicle summon tnt_minecart run tp @s @n[type=minecart]
execute if items entity @s weapon.mainhand furnace on vehicle summon furnace_minecart run tp @s @n[type=minecart]
execute on vehicle run kill @s
execute store result storage player_pos x float 0.0001 run scoreboard players get @s player_last_pos_x
execute store result storage player_pos y float 0.0001 run scoreboard players get @s player_last_pos_y
execute store result storage player_pos z float 0.0001 run scoreboard players get @s player_last_pos_z
execute store result storage player_pos x_rotation float 0.0001 run scoreboard players get @s player_last_pos_x_rotation
execute store result storage player_pos y_rotation float 0.0001 run scoreboard players get @s player_last_pos_y_rotation
function transportation_add_on_blocks:home with storage player_pos
item modify entity @s[gamemode=!creative] weapon.mainhand transportation_add_on_blocks:count_remove_one