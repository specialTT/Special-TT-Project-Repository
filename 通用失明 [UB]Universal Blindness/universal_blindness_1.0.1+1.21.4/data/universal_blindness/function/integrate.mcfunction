execute as @e[nbt={active_effects:[{id:"minecraft:blindness"}]},type=!minecraft:warden] at @s run function universal_blindness:add_effects with entity @s attributes.[{id:"minecraft:follow_range"}]
execute as @e[nbt=!{active_effects:[{id:"minecraft:blindness"}]},type=!minecraft:warden] at @s run function universal_blindness:remove_effects