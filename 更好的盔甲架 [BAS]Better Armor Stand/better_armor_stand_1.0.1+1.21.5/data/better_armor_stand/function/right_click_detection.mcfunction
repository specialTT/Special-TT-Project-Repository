execute unless items entity @n[type=minecraft:armor_stand] weapon.mainhand * run function better_armor_stand:rm
execute unless items entity @n[type=minecraft:armor_stand] weapon.offhand * run function better_armor_stand:ro
data remove entity @n[type=interaction,tag=armor_stand_interaction] interaction