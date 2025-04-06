execute as @a[scores={big_jump_detection=1..},predicate=!big_jump:is_sneaking] run attribute @s jump_strength modifier add 666668753 0.5 add_multiplied_total
execute as @a[scores={big_jump_detection=..0}] run attribute @s jump_strength modifier remove 666668753
execute as @a[predicate=big_jump:is_sneaking,predicate=big_jump:is_on_ground] run scoreboard players set @s big_jump_detection 6
scoreboard players remove @a[scores={big_jump_detection=1..}] big_jump_detection 1