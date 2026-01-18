tag @s remove tp
execute positioned as @s run particle sculk_charge{roll:0} ~ ~1 ~ 0.3 0.5 0.3 0 300
$tp @s $(x) $(y) $(z)
execute positioned as @s run particle sculk_charge{roll:0} ~ ~1 ~ 0.3 0.5 0.3 0 300
execute positioned as @s run playsound entity.enderman.teleport player @a ~ ~ ~
execute if entity @s[gamemode=!creative] run item modify entity @s weapon.offhand {function:"set_count",count:-1,add:true}