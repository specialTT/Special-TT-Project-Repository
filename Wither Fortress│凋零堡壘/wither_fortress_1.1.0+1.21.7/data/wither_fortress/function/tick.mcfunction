execute at @e[type=marker,tag=refresh] run setblock ~ ~ ~ air
execute at @e[type=marker,tag=refresh] run setblock ~ ~ ~ bedrockcrafter:bedrock_wall
kill @e[type=marker,tag=refresh]

execute at @e[type=marker,tag=modification] positioned ~3 ~ ~ unless predicate wither_fortress:road_check_x positioned ~-3 ~ ~ run setblock ~2 ~ ~1 bedrockcrafter:bedrock_wall
execute at @e[type=marker,tag=modification] positioned ~3 ~ ~ unless predicate wither_fortress:road_check_x positioned ~-3 ~ ~ run setblock ~2 ~ ~ bedrockcrafter:bedrock_wall
execute at @e[type=marker,tag=modification] positioned ~3 ~ ~ unless predicate wither_fortress:road_check_x positioned ~-3 ~ ~ run setblock ~2 ~ ~-1 bedrockcrafter:bedrock_wall

execute at @e[type=marker,tag=modification] positioned ~-3 ~ ~ unless predicate wither_fortress:road_check_x positioned ~3 ~ ~ run setblock ~-2 ~ ~1 bedrockcrafter:bedrock_wall
execute at @e[type=marker,tag=modification] positioned ~-3 ~ ~ unless predicate wither_fortress:road_check_x positioned ~3 ~ ~ run setblock ~-2 ~ ~ bedrockcrafter:bedrock_wall
execute at @e[type=marker,tag=modification] positioned ~-3 ~ ~ unless predicate wither_fortress:road_check_x positioned ~3 ~ ~ run setblock ~-2 ~ ~-1 bedrockcrafter:bedrock_wall

execute at @e[type=marker,tag=modification] positioned ~ ~ ~3 unless predicate wither_fortress:road_check_z positioned ~ ~ ~-3 run setblock ~1 ~ ~2 bedrockcrafter:bedrock_wall
execute at @e[type=marker,tag=modification] positioned ~ ~ ~3 unless predicate wither_fortress:road_check_z positioned ~ ~ ~-3 run setblock ~ ~ ~2 bedrockcrafter:bedrock_wall
execute at @e[type=marker,tag=modification] positioned ~ ~ ~3 unless predicate wither_fortress:road_check_z positioned ~ ~ ~-3 run setblock ~-1 ~ ~2 bedrockcrafter:bedrock_wall

execute at @e[type=marker,tag=modification] positioned ~ ~ ~-3 unless predicate wither_fortress:road_check_z positioned ~ ~ ~3 run setblock ~1 ~ ~-2 bedrockcrafter:bedrock_wall
execute at @e[type=marker,tag=modification] positioned ~ ~ ~-3 unless predicate wither_fortress:road_check_z positioned ~ ~ ~3 run setblock ~ ~ ~-2 bedrockcrafter:bedrock_wall
execute at @e[type=marker,tag=modification] positioned ~ ~ ~-3 unless predicate wither_fortress:road_check_z positioned ~ ~ ~3 run setblock ~-1 ~ ~-2 bedrockcrafter:bedrock_wall

execute at @e[type=marker,tag=modification] if block ~2 ~ ~ bedrockcrafter:bedrock_wall if block ~-2 ~ ~ bedrockcrafter:bedrock_wall if block ~ ~ ~2 bedrockcrafter:bedrock_wall run place template wither_fortress:summoning_tower_north ~-2 ~-1 ~-2
execute at @e[type=marker,tag=modification] if block ~2 ~ ~ bedrockcrafter:bedrock_wall if block ~-2 ~ ~ bedrockcrafter:bedrock_wall if block ~ ~ ~-2 bedrockcrafter:bedrock_wall run place template wither_fortress:summoning_tower_south ~-2 ~-1 ~-2
execute at @e[type=marker,tag=modification] if block ~-2 ~ ~ bedrockcrafter:bedrock_wall if block ~ ~ ~2 bedrockcrafter:bedrock_wall if block ~ ~ ~-2 bedrockcrafter:bedrock_wall run place template wither_fortress:summoning_tower_east ~-2 ~-1 ~-2
execute at @e[type=marker,tag=modification] if block ~2 ~ ~ bedrockcrafter:bedrock_wall if block ~ ~ ~2 bedrockcrafter:bedrock_wall if block ~ ~ ~-2 bedrockcrafter:bedrock_wall run place template wither_fortress:summoning_tower_west ~-2 ~-1 ~-2

kill @e[type=marker,tag=modification]
execute as @e[type=item_display,tag=wither_skeleton_skull] at @s if block ~ ~ ~ #wither_fortress:wither_skeleton_skull run item replace entity @s container.0 with bedrock[item_model="wither_fortress:wither_skeleton_skull_frame_start_up",item_name={translate:"block.wither_fortress.wither_skeleton_skull_frame"}] 1
execute as @e[type=item_display,tag=wither_skeleton_skull] at @s unless block ~ ~ ~ #wither_fortress:wither_skeleton_skull run item replace entity @s container.0 with bedrock[item_model="wither_fortress:wither_skeleton_skull_frame",item_name={translate:"block.wither_fortress.wither_skeleton_skull_frame"}] 1
execute as @e[type=marker,tag=wither_fortress_marker,tag=set] at @s run function wither_fortress:wither_summon
execute as @e[type=marker,tag=wither_fortress_marker] at @s run function wither_fortress:summoning_ritual with entity @s data
execute at @e[type=item_display,tag=wither_skeleton_skull] run particle minecraft:sculk_soul ~ ~ ~ 0.5 0.5 0.5 0 1 force
execute as @e[type=wither] at @s if data entity @s home_pos unless predicate {condition:"entity_properties",entity:"this",predicate:{location:{structures:"wither_fortress:wither_fortress"}}} unless predicate {condition:"entity_properties",entity:"this",predicate:{targeted_entity:{}}} run data modify entity @s Pos set from entity @s home_pos