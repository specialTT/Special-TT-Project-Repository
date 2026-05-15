execute as @e[type=snow_golem] if items entity @s armor.body snowball run effect give @s minecraft:regeneration 1 5 true
execute as @e[type=snow_golem] if items entity @s armor.body snowball run data merge entity @s {active_effects:[{id:"regeneration",duration:1,amplifier:5,show_particles:0b,show_icon:0b}]}
execute as @e[type=iron_golem] if items entity @s armor.body iron_ingot run effect give @s minecraft:regeneration 1 5 true
execute as @e[type=iron_golem] if items entity @s armor.body iron_ingot run data merge entity @s {active_effects:[{id:"regeneration",duration:1,amplifier:5,show_particles:0b,show_icon:0b}]}
execute as @e[type=iron_golem] if items entity @s armor.body iron_ingot run effect give @s minecraft:instant_health 1 5 true
execute as @e[type=snow_golem,nbt={data:{addition:3b}}] if items entity @s saddle snow_block run data merge entity @s {data:{addition:4b}}
execute as @e[type=snow_golem,nbt={data:{addition:2b}}] if items entity @s saddle snow_block run data merge entity @s {data:{addition:3b}}
execute as @e[type=snow_golem,nbt={data:{addition:1b}}] if items entity @s saddle snow_block run data merge entity @s {data:{addition:2b}}
execute as @e[type=snow_golem] unless data entity @s data.addition if items entity @s saddle snow_block run data merge entity @s {data:{addition:1b}}
execute as @e[type=iron_golem,nbt={data:{addition:3b}}] if items entity @s saddle iron_block run data merge entity @s {data:{addition:4b}}
execute as @e[type=iron_golem,nbt={data:{addition:2b}}] if items entity @s saddle iron_block run data merge entity @s {data:{addition:3b}}
execute as @e[type=iron_golem,nbt={data:{addition:1b}}] if items entity @s saddle iron_block run data merge entity @s {data:{addition:2b}}
execute as @e[type=iron_golem] unless data entity @s data.addition if items entity @s saddle iron_block run data merge entity @s {data:{addition:1b}}
execute as @e[type=snow_golem] if items entity @s saddle snow_block run attribute @s max_health modifier remove snow_golem_health
execute as @e[type=snow_golem,nbt={data:{addition:1b}}] if items entity @s saddle snow_block run attribute @s max_health modifier add snow_golem_health 1 add_value
execute as @e[type=snow_golem,nbt={data:{addition:2b}}] if items entity @s saddle snow_block run attribute @s max_health modifier add snow_golem_health 2 add_value
execute as @e[type=snow_golem,nbt={data:{addition:3b}}] if items entity @s saddle snow_block run attribute @s max_health modifier add snow_golem_health 3 add_value
execute as @e[type=snow_golem,nbt={data:{addition:4b}}] if items entity @s saddle snow_block run attribute @s max_health modifier add snow_golem_health 4 add_value
execute as @e[type=iron_golem] if items entity @s saddle iron_block run attribute @s max_health modifier remove iron_golem_health
execute as @e[type=iron_golem,nbt={data:{addition:1b}}] if items entity @s saddle iron_block run attribute @s max_health modifier add iron_golem_health 25 add_value
execute as @e[type=iron_golem,nbt={data:{addition:2b}}] if items entity @s saddle iron_block run attribute @s max_health modifier add iron_golem_health 50 add_value
execute as @e[type=iron_golem,nbt={data:{addition:3b}}] if items entity @s saddle iron_block run attribute @s max_health modifier add iron_golem_health 75 add_value
execute as @e[type=iron_golem,nbt={data:{addition:4b}}] if items entity @s saddle iron_block run attribute @s max_health modifier add iron_golem_health 100 add_value
item replace entity @e[type=iron_golem] armor.body with air
item replace entity @e[type=iron_golem] saddle with air
item replace entity @e[type=snow_golem] armor.body with air
item replace entity @e[type=snow_golem] saddle with air
execute as @e[type=iron_golem,nbt={data:{addition:4b}}] run item replace entity @s saddle with acacia_boat[equippable={slot:"saddle",equip_sound:{sound_id:"entity.iron_golem.repair",range:0}},custom_data={function:"fill"}]
execute as @e[type=snow_golem,nbt={data:{addition:4b}}] run item replace entity @s saddle with acacia_boat[equippable={slot:"saddle",equip_sound:{sound_id:"entity.iron_golem.repair",range:0}},custom_data={function:"fill"}]
execute as @e[type=minecraft:iron_golem] store result score @s health run data get entity @s Health
execute as @e[type=minecraft:iron_golem] store result score @s lost_health run attribute @s minecraft:max_health get
execute as @e[type=minecraft:iron_golem] run scoreboard players operation @s lost_health -= @s health
execute as @e[type=minecraft:iron_golem,scores={lost_health=0}] run item replace entity @s armor.body with acacia_boat[equippable={slot:"body",equip_sound:{sound_id:"entity.iron_golem.repair",range:0}},custom_data={function:"fill"}]
execute as @e[type=minecraft:snow_golem] store result score @s health run data get entity @s Health
execute as @e[type=minecraft:snow_golem] store result score @s lost_health run attribute @s minecraft:max_health get
execute as @e[type=minecraft:snow_golem] run scoreboard players operation @s lost_health -= @s health
execute as @e[type=minecraft:snow_golem,scores={lost_health=0}] run item replace entity @s armor.body with acacia_boat[equippable={slot:"body",equip_sound:{sound_id:"entity.iron_golem.repair",range:0}},custom_data={function:"fill"}]
execute as @e[type=minecraft:snow_golem] run data modify entity @s drop_chances set value {saddle:0f}
execute as @e[type=minecraft:snow_golem] run data modify entity @s drop_chances set value {body:0f}
execute as @e[type=minecraft:iron_golem] run data modify entity @s drop_chances set value {saddle:0f}
execute as @e[type=minecraft:iron_golem] run data modify entity @s drop_chances set value {body:0f}