execute as @e[type=piglin,tag=!only_a_type_of_spear] if items entity @s weapon.mainhand golden_spear run item replace entity @s weapon.mainhand with golden_sword
execute as @e[type=zombified_piglin,tag=!only_a_type_of_spear] if items entity @s weapon.mainhand golden_spear run item replace entity @s weapon.mainhand with golden_sword
tag @e[type=piglin,tag=!only_a_type_of_spear] add only_a_type_of_spear
tag @e[type=zombified_piglin,tag=!only_a_type_of_spear] add only_a_type_of_spear