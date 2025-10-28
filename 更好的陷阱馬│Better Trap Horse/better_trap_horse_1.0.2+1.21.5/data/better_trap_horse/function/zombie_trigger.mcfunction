particle end_rod ~ ~66 ~ 0.1 20 0.1 0 100000 force
playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 64 0.7
summon minecraft:zombie_horse ~ ~ ~ {Tame:1b,Tags:["need_set"],Passengers:[{id:"zombie",equipment:{mainhand:{id:"diamond_sword"},head:{id:"diamond_helmet"},chest:{id:"diamond_chestplate"},feet:{id:"diamond_boots"},legs:{id:"diamond_leggings"}},Tags:["need_set"]}]}
summon minecraft:zombie_horse ~ ~ ~ {Tame:1b,Tags:["need_set"],Passengers:[{id:"zombie",equipment:{mainhand:{id:"diamond_sword"},head:{id:"diamond_helmet"},chest:{id:"diamond_chestplate"},feet:{id:"diamond_boots"},legs:{id:"diamond_leggings"}},Tags:["need_set"]}]}
summon minecraft:zombie_horse ~ ~ ~ {Tame:1b,Tags:["need_set"],Passengers:[{id:"zombie",equipment:{mainhand:{id:"diamond_sword"},head:{id:"diamond_helmet"},chest:{id:"diamond_chestplate"},feet:{id:"diamond_boots"},legs:{id:"diamond_leggings"}},Tags:["need_set"]}]}
summon minecraft:zombie_horse ~ ~ ~ {Tame:1b,Tags:["need_set"],Passengers:[{id:"zombie",equipment:{mainhand:{id:"diamond_sword"},head:{id:"diamond_helmet"},chest:{id:"diamond_chestplate"},feet:{id:"diamond_boots"},legs:{id:"diamond_leggings"}},Tags:["need_set"]}]}
item modify entity @e[type=zombie,tag=need_set] armor.head {function:"enchant_with_levels",levels:22,options:"#on_mob_spawn_equipment"}
item modify entity @e[type=zombie,tag=need_set] armor.chest {function:"enchant_with_levels",levels:22,options:"#on_mob_spawn_equipment"}
item modify entity @e[type=zombie,tag=need_set] armor.feet {function:"enchant_with_levels",levels:22,options:"#on_mob_spawn_equipment"}
item modify entity @e[type=zombie,tag=need_set] armor.legs {function:"enchant_with_levels",levels:22,options:"#on_mob_spawn_equipment"}
item modify entity @e[type=zombie,tag=need_set] weapon.mainhand {function:"enchant_with_levels",levels:22,options:"#on_mob_spawn_equipment"}
execute as @e[type=zombie_horse,tag=need_set] store result entity @s Rotation[0] float 1 run random value 0..360
execute as @e[type=zombie_horse,tag=need_set] run function projectile_motion:launch {speed:"0.5"}
tag @e remove need_set
tag @s remove trap_horse
tp @s ~ -200 ~