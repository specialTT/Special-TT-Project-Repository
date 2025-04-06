execute as @e[nbt={active_effects:[{id:"minecraft:blindness"}]},type=!minecraft:warden] at @s run attribute @s generic.follow_range base set 4
execute as @e[tag=!detectioncompleted] at @s run function universal_blindness:detection
execute as @e[nbt=!{active_effects:[{id:"minecraft:blindness"}]},type=!minecraft:warden] at @s run function universal_blindness:remove_effect