execute if items entity @s weapon.mainhand minecraft:stick if data entity @n[type=armor_stand] {Small:1b} run tag @n[type=armor_stand] add big
execute if items entity @s weapon.mainhand minecraft:stick if data entity @n[type=armor_stand] {Small:0b} run tag @n[type=armor_stand] add small
data modify entity @n[type=armor_stand,tag=small] Small set value 1b
data modify entity @n[type=armor_stand,tag=big] Small set value 0b
tag @n[type=armor_stand] remove big
tag @n[type=armor_stand] remove small
execute if items entity @s weapon.mainhand minecraft:stick run playsound block.comparator.click block @s ~ ~ ~ 1 1.2
execute if items entity @s weapon.mainhand minecraft:stick run kill @n[type=interaction,tag=armor_stand_interaction]
execute if items entity @s weapon.mainhand minecraft:bone run scoreboard players add @n[type=armor_stand] pose 1
execute if items entity @s weapon.mainhand minecraft:bone if entity @n[type=armor_stand,scores={pose=0}] run data remove entity @n[type=armor_stand] Pose
execute if items entity @s weapon.mainhand minecraft:bone if entity @n[type=armor_stand,scores={pose=1}] run data merge entity @n[type=armor_stand] {Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
execute if items entity @s weapon.mainhand minecraft:bone if entity @n[type=armor_stand,scores={pose=2}] run data merge entity @n[type=armor_stand] {Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],Body:[0f,0f,0f],Head:[18f,0f,0f],LeftArm:[320f,38f,0f],RightArm:[300f,340f,0f]}}
execute if items entity @s weapon.mainhand minecraft:bone if entity @n[type=armor_stand,scores={pose=3}] run data merge entity @n[type=armor_stand] {Pose:{LeftArm:[5f,0f,353f],RightArm:[313f,29f,0f],Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
execute if items entity @s weapon.mainhand minecraft:bone if entity @n[type=armor_stand,scores={pose=4}] run data merge entity @n[type=armor_stand] {Pose:{Head:[348f,0f,0f],LeftLeg:[9f,0f,0f],RightLeg:[353f,0f,0f],LeftArm:[16f,9f,0f],RightArm:[238f,22f,0f],Body:[0f,0f,0f]}}
execute if items entity @s weapon.mainhand minecraft:bone if entity @n[type=armor_stand,scores={pose=5}] run data merge entity @n[type=armor_stand] {Pose:{Head:[348f,0f,0f],LeftLeg:[9f,0f,0f],RightLeg:[353f,0f,0f],LeftArm:[247f,40f,0f],RightArm:[249f,324f,0f],Body:[0f,0f,0f]}}
execute if items entity @s weapon.mainhand minecraft:bone if entity @n[type=armor_stand,scores={pose=6}] run data merge entity @n[type=armor_stand] {Pose:{Head:[348f,0f,0f],LeftLeg:[9f,0f,0f],RightLeg:[353f,0f,0f],LeftArm:[251f,329f,0f],RightArm:[251f,31f,0f],Body:[0f,0f,0f]}}
execute if items entity @s weapon.mainhand minecraft:bone if entity @n[type=armor_stand,scores={pose=7}] run data merge entity @n[type=armor_stand] {Pose:{LeftArm:[18f,0f,342f],RightArm:[278f,320f,0f],Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
execute if items entity @s weapon.mainhand minecraft:bone if entity @n[type=armor_stand,scores={pose=8}] run data merge entity @n[type=armor_stand] {Pose:{Body:[0f,5f,0f],Head:[351f,51f,0f],LeftLeg:[9f,20f,0f],RightLeg:[0f,329f,0f],LeftArm:[16f,31f,0f],RightArm:[249f,51f,0f]}}
execute if items entity @s weapon.mainhand minecraft:bone if entity @n[type=armor_stand,scores={pose=9}] run data merge entity @n[type=armor_stand] {Pose:{Head:[16f,33f,0f],LeftLeg:[9f,20f,0f],RightLeg:[0f,329f,0f],LeftArm:[106f,89f,360f],RightArm:[269f,326f,0f],Body:[0f,0f,0f]}}
execute if items entity @s weapon.mainhand minecraft:bone if entity @n[type=armor_stand,scores={pose=10}] run data merge entity @n[type=armor_stand] {Pose:{Head:[353f,0f,0f],LeftLeg:[7f,0f,0f],RightLeg:[322f,0f,0f],LeftArm:[262f,0f,0f],RightArm:[262f,0f,0f],Body:[0f,0f,0f]}}
execute if items entity @s weapon.mainhand minecraft:bone if entity @n[type=armor_stand,scores={pose=11}] run data merge entity @n[type=armor_stand] {Pose:{Head:[14f,0f,0f],LeftLeg:[11f,0f,0f],RightLeg:[355f,0f,0f],LeftArm:[289f,42f,0f],RightArm:[323f,318f,348f],Body:[0f,0f,0f]}}
execute if items entity @s weapon.mainhand minecraft:bone if entity @n[type=armor_stand,scores={pose=12}] run data merge entity @n[type=armor_stand] {Pose:{LeftLeg:[3f,0f,0f],RightLeg:[355f,0f,0f],LeftArm:[88f,148f,179f],RightArm:[93f,150f,0f],Body:[0f,0f,0f],Head:[0f,0f,0f]}}
execute if items entity @s weapon.mainhand minecraft:bone run playsound entity.armor_stand.place block @s ~ ~ ~ 1 1.5
execute unless items entity @s weapon.mainhand minecraft:stick unless items entity @s weapon.mainhand minecraft:bone unless items entity @s weapon.offhand * run function better_armor_stand:lo
execute unless items entity @s weapon.mainhand * run function better_armor_stand:lm
data remove entity @n[type=interaction,tag=armor_stand_interaction] attack