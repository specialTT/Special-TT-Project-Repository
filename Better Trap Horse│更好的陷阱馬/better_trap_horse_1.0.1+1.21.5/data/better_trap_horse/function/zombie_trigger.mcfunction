particle end_rod ~ ~66 ~ 0.1 20 0.1 0 100000 force
playsound minecraft:block.beacon.power_select hostile @r ~ ~ ~ 64 0.7
summon minecraft:zombie_horse ~0.5 ~ ~0.5 {Tame:1b,Passengers:[{id:"zombie",equipment:{mainhand:{id:"diamond_sword"},head:{id:"diamond_helmet"},chest:{id:"diamond_chestplate"},feet:{id:"diamond_boots"},legs:{id:"diamond_leggings"}},Tags:["need_set"]}]}
summon minecraft:zombie_horse ~-0.5 ~ ~0.5 {Tame:1b,Passengers:[{id:"zombie",equipment:{mainhand:{id:"diamond_sword"},head:{id:"diamond_helmet"},chest:{id:"diamond_chestplate"},feet:{id:"diamond_boots"},legs:{id:"diamond_leggings"}},Tags:["need_set"]}]}
summon minecraft:zombie_horse ~0.5 ~ ~-0.5 {Tame:1b,Passengers:[{id:"zombie",equipment:{mainhand:{id:"diamond_sword"},head:{id:"diamond_helmet"},chest:{id:"diamond_chestplate"},feet:{id:"diamond_boots"},legs:{id:"diamond_leggings"}},Tags:["need_set"]}]}
summon minecraft:zombie_horse ~-0.5 ~ ~-0.5 {Tame:1b,Passengers:[{id:"zombie",equipment:{mainhand:{id:"diamond_sword"},head:{id:"diamond_helmet"},chest:{id:"diamond_chestplate"},feet:{id:"diamond_boots"},legs:{id:"diamond_leggings"}},Tags:["need_set"]}]}
item modify entity @e[type=zombie,tag=need_set] armor.head {function:"enchant_with_levels",levels:22,options:"#on_mob_spawn_equipment"}
item modify entity @e[type=zombie,tag=need_set] armor.chest {function:"enchant_with_levels",levels:22,options:"#on_mob_spawn_equipment"}
item modify entity @e[type=zombie,tag=need_set] armor.feet {function:"enchant_with_levels",levels:22,options:"#on_mob_spawn_equipment"}
item modify entity @e[type=zombie,tag=need_set] armor.legs {function:"enchant_with_levels",levels:22,options:"#on_mob_spawn_equipment"}
item modify entity @e[type=zombie,tag=need_set] weapon.mainhand {function:"enchant_with_levels",levels:22,options:"#on_mob_spawn_equipment"}
tag @e remove need_set
tag @s remove trap_horse
tp @s ~ -200 ~