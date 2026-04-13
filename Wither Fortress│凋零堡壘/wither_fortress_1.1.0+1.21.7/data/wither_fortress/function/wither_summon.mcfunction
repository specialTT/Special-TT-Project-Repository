execute at @s align xyz run tp @s ~ ~ ~
data modify storage wither_fortress:storage x set from entity @s Pos[0]
data modify storage wither_fortress:storage y set from entity @s Pos[1]
data modify storage wither_fortress:storage z set from entity @s Pos[2]
data modify entity @s data.x set from entity @s Pos[0]
data modify entity @s data.y set from entity @s Pos[1]
data modify entity @s data.z set from entity @s Pos[2]
execute at @e[type=marker,tag=wither_fortress.tower,limit=3,sort=random] run function wither_fortress:bedrock_column
kill @e[type=marker,tag=wither_fortress.tower]
function wither_fortress:summon with storage wither_fortress:storage
tag @s remove set