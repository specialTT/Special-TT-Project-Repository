execute as @e[type=evoker,tag=!immortal] run item replace entity @s weapon.mainhand with totem_of_undying[item_model="air"]
execute as @e[type=evoker,tag=!immortal] run tag @s add immortal
execute as @e[type=evoker] if items entity @s weapon.mainhand totem_of_undying at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0.3 0.3 0.3 0 1