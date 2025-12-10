execute as @e[type=piglin,tag=!hoglin_cavalry] at @s if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_baby:false}}} if predicate {condition:"any_of",terms:[{condition:"location_check",predicate:{biomes:"crimson_forest"}},{condition:"location_check",predicate:{structures:"bastion_remnant"}}]} if predicate {condition:"random_chance",chance:0.2} run tag @s add ride_hoglin
execute at @e[type=piglin,tag=!hoglin_cavalry,tag=ride_hoglin] run summon hoglin ~ ~ ~ {Tags:["cavalry"]}
execute as @e[type=piglin,tag=!hoglin_cavalry,tag=ride_hoglin] at @s run ride @s mount @n[type=hoglin,tag=cavalry]
execute as @e[type=piglin,tag=!hoglin_cavalry,tag=ride_hoglin] run tag @s remove ride_hoglin
execute as @e[type=piglin,tag=!hoglin_cavalry] run tag @s add hoglin_cavalry
team join piglin_and_hoglin @e[type=piglin]
team join piglin_and_hoglin @e[type=hoglin]
team join piglin_and_hoglin @e[type=piglin_brute]
function mob_autonomous_ride:ride {riding_target:"type=piglin,predicate=!mob_autonomous_ride:is_baby",being_ridden_target:"type=hoglin,predicate=!mob_autonomous_ride:is_baby",max_riding_distance:"1.4"}