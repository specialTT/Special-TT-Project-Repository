execute at @s run playsound item.bucket.fill_lava player @a
advancement revoke @s only lava_from_the_blaze:used_bucket_offhand
execute as @s[gamemode=!creative] if items entity @s weapon.offhand * run give @s minecraft:lava_bucket
execute unless items entity @s weapon.offhand * run item replace entity @s weapon.offhand with minecraft:lava_bucket
scoreboard players set @s[gamemode=creative] has_lava_bucket 0
execute as @s[gamemode=creative] store success score @s has_lava_bucket run clear @s minecraft:lava_bucket 0
give @s[gamemode=creative,scores={has_lava_bucket=0}] minecraft:lava_bucket