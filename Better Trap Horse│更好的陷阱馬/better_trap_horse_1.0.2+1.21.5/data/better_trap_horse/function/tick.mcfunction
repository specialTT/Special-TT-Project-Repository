execute as @e[type=skeleton_horse,nbt={SkeletonTrap:1b}] if predicate {condition:"random_chance",chance:0.5} at @s run function better_trap_horse:zombie_trap_horse
execute as @e[type=skeleton_horse,nbt={SkeletonTrap:1b}] at @s run function better_trap_horse:skeleton_trap_horse
execute as @e[tag=trap_horse] unless score @s SkeletonTrapTime matches -2147483648..2147483647 run scoreboard players set @s SkeletonTrapTime 18000
execute as @e[tag=trap_horse] run scoreboard players remove @s SkeletonTrapTime 1
execute as @e[tag=trap_horse,scores={SkeletonTrapTime=0}] run tp @s ~ -200 ~
execute as @e[type=skeleton_horse,tag=trap_horse] at @s if entity @e[distance=0.05..10,type=#better_trap_horse:mobs] run function better_trap_horse:skeleton_trigger
execute as @e[type=zombie_horse,tag=trap_horse] at @s if entity @e[distance=0.05..10,type=#better_trap_horse:mobs] run function better_trap_horse:zombie_trigger
execute as @e[type=zombie_horse] if predicate {condition:"entity_properties",entity:"this",predicate:{passenger:{type:"zombie",targeted_entity:{}}}} run attribute @s movement_speed modifier add knight_bonus 1 add_multiplied_base
execute as @e[type=zombie_horse] unless predicate {condition:"entity_properties",entity:"this",predicate:{passenger:{type:"zombie",targeted_entity:{}}}} run attribute @s movement_speed modifier remove knight_bonus
function mob_autonomous_ride:ride {riding_target:"type=zombie,predicate=!mob_autonomous_ride:is_baby",being_ridden_target:"type=zombie_horse,predicate=!mob_autonomous_ride:is_baby",max_riding_distance:"1.5"}