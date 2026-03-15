playsound throwing_sand:block.sand.hitting_an_object block @r
particle minecraft:block{block_state:"sand"} ~ ~ ~ 0 0 0 0.5 100
execute if entity @s[nbt={data:{type_of_sand_to_throw:"minecraft:sand"}}] unless block ~ ~ ~ air run summon item ~ ~ ~ {Item:{id:"sand"}}
execute if entity @s[nbt={data:{type_of_sand_to_throw:"minecraft:sand"}}] if block ~ ~ ~ air run setblock ~ ~ ~ sand
execute if entity @s[nbt={data:{type_of_sand_to_throw:"minecraft:red_sand"}}] unless block ~ ~ ~ air run summon item ~ ~ ~ {Item:{id:"red_sand"}}
execute if entity @s[nbt={data:{type_of_sand_to_throw:"minecraft:red_sand"}}] if block ~ ~ ~ air run setblock ~ ~ ~ red_sand