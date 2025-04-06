execute as @a[scores={big_jump_detection=1..},predicate=!big_jump:is_sneaking] run function big_jump:0.63
execute as @a[scores={big_jump_detection=..0},tag=!0.42] run function big_jump:0.42
execute as @a[predicate=big_jump:is_sneaking] run scoreboard players set @s big_jump_detection 6
scoreboard players remove @a[scores={big_jump_detection=1..}] big_jump_detection 1