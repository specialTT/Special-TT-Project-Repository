execute as @a if items entity @s weapon.mainhand minecraft:bucket run tag @s add mainhand_bucket
execute as @a if items entity @s weapon.mainhand minecraft:bucket run tag @s remove offhand_bucket
execute as @a unless items entity @s weapon.mainhand minecraft:bucket if items entity @s weapon.offhand minecraft:bucket run tag @s add offhand_bucket
execute as @a unless items entity @s weapon.mainhand minecraft:bucket if items entity @s weapon.offhand minecraft:bucket run tag @s remove mainhand_bucket
item replace entity @e[type=blaze] armor.body with air