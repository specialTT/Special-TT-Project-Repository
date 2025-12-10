particle end_rod ~ ~66 ~ 0.1 20 0.1 0 100000 force
playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 64 0.7
summon minecraft:skeleton_horse ~ ~ ~ {Tame:1b,Tags:["need_set"],Passengers:[{id:"skeleton",equipment:{mainhand:{id:"bow"},head:{id:"iron_helmet"}},Tags:["need_set"]}]}
summon minecraft:skeleton_horse ~ ~ ~ {Tame:1b,Tags:["need_set"],Passengers:[{id:"skeleton",equipment:{mainhand:{id:"bow"},head:{id:"iron_helmet"}},Tags:["need_set"]}]}
summon minecraft:skeleton_horse ~ ~ ~ {Tame:1b,Tags:["need_set"],Passengers:[{id:"skeleton",equipment:{mainhand:{id:"bow"},head:{id:"iron_helmet"}},Tags:["need_set"]}]}
summon minecraft:skeleton_horse ~ ~ ~ {Tame:1b,Tags:["need_set"],Passengers:[{id:"skeleton",equipment:{mainhand:{id:"bow"},head:{id:"iron_helmet"}},Tags:["need_set"]}]}
item modify entity @e[type=skeleton,tag=need_set] armor.head {function:"enchant_with_levels",levels:22,options:"#on_mob_spawn_equipment"}
item modify entity @e[type=skeleton,tag=need_set] weapon.mainhand {function:"enchant_with_levels",levels:22,options:"#on_mob_spawn_equipment"}
execute as @e[type=skeleton_horse,tag=need_set] store result entity @s Rotation[0] float 1 run random value 0..360
execute as @e[type=skeleton_horse,tag=need_set] run function projectile_motion:launch {speed:"0.5"}
tag @e remove need_set
tag @s remove trap_horse
tp @s ~ -200 ~