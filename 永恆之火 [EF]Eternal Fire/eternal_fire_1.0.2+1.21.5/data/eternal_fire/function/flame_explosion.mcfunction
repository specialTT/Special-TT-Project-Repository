$execute at @s as @e[distance=..2.5,type=!blaze] run damage @s 6 explosion by @n[type=marker] from @n[nbt={UUID:$(Owner)}]
particle minecraft:flame ~ ~ ~ 0 0 0 0.05 100
playsound block.fire.extinguish block @r ~ ~ ~ 1 2
kill @s