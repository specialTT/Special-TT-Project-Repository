execute as @a[scores={big_jump_detection=1..},predicate=!big_jump:is_sneaking] run attribute @s minecraft:generic.jump_strength base set 0.63
execute as @a[scores={big_jump_detection=..0}] run attribute @s minecraft:generic.jump_strength base set 0.42
execute as @a[predicate=big_jump:is_sneaking] run scoreboard players set @s big_jump_detection 9
scoreboard players remove @a[scores={big_jump_detection=1..}] big_jump_detection 1