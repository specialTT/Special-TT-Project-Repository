execute summon marker store result entity @s data.difficulty int 1 run difficulty
execute unless entity @n[type=marker,nbt={data:{difficulty:0}}] at @e[predicate=wither_rose_tweak:wither_rose] run function wither_rose_tweak:wither
kill @e[type=marker,nbt={data:{difficulty:0}}]
kill @e[type=marker,nbt={data:{difficulty:1}}]
kill @e[type=marker,nbt={data:{difficulty:2}}]
kill @e[type=marker,nbt={data:{difficulty:3}}]