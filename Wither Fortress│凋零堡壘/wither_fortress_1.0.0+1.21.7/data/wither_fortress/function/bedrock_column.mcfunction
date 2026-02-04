setblock ~ ~ ~ air
place template wither_fortress:bedrock_column
execute positioned ~ ~2 ~ as @n[type=item_display] run data modify entity @s data.pos set from storage wither_fortress:storage