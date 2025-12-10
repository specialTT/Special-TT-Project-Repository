$execute as @n[nbt={UUID:$(UUID)}] at @s if entity @s[type=oak_boat] summon oak_chest_boat run tp @s @n[nbt={UUID:$(UUID)}]
$execute as @n[nbt={UUID:$(UUID)}] if entity @s[type=spruce_boat] summon spruce_chest_boat run tp @s @n[nbt={UUID:$(UUID)}]
$execute as @n[nbt={UUID:$(UUID)}] at @s if entity @s[type=birch_boat] summon birch_chest_boat run tp @s @n[nbt={UUID:$(UUID)}]
$execute as @n[nbt={UUID:$(UUID)}] at @s if entity @s[type=jungle_boat] summon jungle_chest_boat run tp @s @n[nbt={UUID:$(UUID)}]
$execute as @n[nbt={UUID:$(UUID)}] at @s if entity @s[type=acacia_boat] summon acacia_chest_boat run tp @s @n[nbt={UUID:$(UUID)}]
$execute as @n[nbt={UUID:$(UUID)}] at @s if entity @s[type=dark_oak_boat] summon dark_oak_chest_boat run tp @s @n[nbt={UUID:$(UUID)}]
$execute as @n[nbt={UUID:$(UUID)}] at @s if entity @s[type=mangrove_boat] summon mangrove_chest_boat run tp @s @n[nbt={UUID:$(UUID)}]
$execute as @n[nbt={UUID:$(UUID)}] at @s if entity @s[type=cherry_boat] summon cherry_chest_boat run tp @s @n[nbt={UUID:$(UUID)}]
$execute as @n[nbt={UUID:$(UUID)}] at @s if entity @s[type=pale_oak_boat] summon pale_oak_chest_boat run tp @s @n[nbt={UUID:$(UUID)}]
$execute as @n[nbt={UUID:$(UUID)}] at @s if entity @s[type=bamboo_raft] summon bamboo_chest_raft run tp @s @n[nbt={UUID:$(UUID)}]
$execute if items entity @s weapon.* minecraft:written_book[minecraft:custom_data={block_id:"chest"}] run execute as @n[nbt={UUID:$(UUID)}] at @s if entity @s[type=minecart] summon chest_minecart run tp @s @n[nbt={UUID:$(UUID)}]
$execute if items entity @s weapon.* minecraft:written_book[minecraft:custom_data={block_id:"tnt"}] run execute as @n[nbt={UUID:$(UUID)}] at @s if entity @s[type=minecart] summon tnt_minecart run tp @s @n[nbt={UUID:$(UUID)}]
$execute if items entity @s weapon.* minecraft:written_book[minecraft:custom_data={block_id:"furnace"}] run execute as @n[nbt={UUID:$(UUID)}] at @s if entity @s[type=minecart] summon furnace_minecart run tp @s @n[nbt={UUID:$(UUID)}]
$execute if items entity @s weapon.* minecraft:written_book[minecraft:custom_data={block_id:"hopper"}] run execute as @n[nbt={UUID:$(UUID)}] at @s if entity @s[type=minecart] summon hopper_minecart run tp @s @n[nbt={UUID:$(UUID)}]
$execute at @n[nbt={UUID:$(UUID)},type=#u_b_o_t:boats] run playsound block.wood.place block @r ~ ~ ~ 1 0.8
$execute if items entity @s weapon.* minecraft:written_book[minecraft:custom_data={block_id:"chest"}] run execute at @n[nbt={UUID:$(UUID)},type=minecart] run playsound block.wood.place block @r ~ ~ ~ 1 0.8
$execute if items entity @s weapon.* minecraft:written_book[minecraft:custom_data={block_id:"tnt"}] run execute at @n[nbt={UUID:$(UUID)},type=minecart] at @s run playsound block.grass.place block @r ~ ~ ~ 0.8 0.8
$execute if items entity @s weapon.* minecraft:written_book[minecraft:custom_data={block_id:"furnace"}] run execute at @n[nbt={UUID:$(UUID)},type=minecart] at @s run playsound block.stone.place block @r ~ ~ ~ 1 0.8
$execute if items entity @s weapon.* minecraft:written_book[minecraft:custom_data={block_id:"hopper"}] run execute at @n[nbt={UUID:$(UUID)},type=minecart] at @s run playsound block.metal.place block @r ~ ~ ~ 1 1.8
$kill @n[nbt={UUID:$(UUID)}]
execute if items entity @s weapon.mainhand minecraft:written_book[minecraft:custom_data={block_id:"chest"}] run item modify entity @s[gamemode=!creative] weapon.mainhand {function:"set_count",add:true,count:-1}
execute unless items entity @s weapon.mainhand minecraft:written_book[minecraft:custom_data={block_id:"chest"}] if items entity @s weapon.offhand minecraft:written_book[minecraft:custom_data={block_id:"chest"}] run item modify entity @s[gamemode=!creative] weapon.offhand {function:"set_count",add:true,count:-1}
execute if items entity @s weapon.mainhand minecraft:written_book[minecraft:custom_data={block_id:"tnt"}] run item modify entity @s[gamemode=!creative] weapon.mainhand {function:"set_count",add:true,count:-1}
execute unless items entity @s weapon.mainhand minecraft:written_book[minecraft:custom_data={block_id:"tnt"}] if items entity @s weapon.offhand minecraft:written_book[minecraft:custom_data={block_id:"tnt"}] run item modify entity @s[gamemode=!creative] weapon.offhand {function:"set_count",add:true,count:-1}
execute if items entity @s weapon.mainhand minecraft:written_book[minecraft:custom_data={block_id:"furnace"}] run item modify entity @s[gamemode=!creative] weapon.mainhand {function:"set_count",add:true,count:-1}
execute unless items entity @s weapon.mainhand minecraft:written_book[minecraft:custom_data={block_id:"furnace"}] if items entity @s weapon.offhand minecraft:written_book[minecraft:custom_data={block_id:"furnace"}] run item modify entity @s[gamemode=!creative] weapon.offhand {function:"set_count",add:true,count:-1}
execute if items entity @s weapon.mainhand minecraft:written_book[minecraft:custom_data={block_id:"hopper"}] run item modify entity @s[gamemode=!creative] weapon.mainhand {function:"set_count",add:true,count:-1}
execute unless items entity @s weapon.mainhand minecraft:written_book[minecraft:custom_data={block_id:"hopper"}] if items entity @s weapon.offhand minecraft:written_book[minecraft:custom_data={block_id:"hopper"}] run item modify entity @s[gamemode=!creative] weapon.offhand {function:"set_count",add:true,count:-1}