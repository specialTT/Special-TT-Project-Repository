execute as @e[type=#tag_lib:ai_mobs,tag=!loot_equipment] run item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{chance:1b}}
execute as @e[type=#tag_lib:ai_mobs,tag=!loot_equipment] run item modify entity @s weapon.offhand {function:"set_custom_data",tag:{chance:1b}}
execute as @e[type=#tag_lib:ai_mobs,tag=!loot_equipment] run item modify entity @s armor.body {function:"set_custom_data",tag:{chance:1b}}
execute as @e[type=#tag_lib:ai_mobs,tag=!loot_equipment] run item modify entity @s armor.chest {function:"set_custom_data",tag:{chance:1b}}
execute as @e[type=#tag_lib:ai_mobs,tag=!loot_equipment] run item modify entity @s armor.feet {function:"set_custom_data",tag:{chance:1b}}
execute as @e[type=#tag_lib:ai_mobs,tag=!loot_equipment] run item modify entity @s armor.head {function:"set_custom_data",tag:{chance:1b}}
execute as @e[type=#tag_lib:ai_mobs,tag=!loot_equipment] run item modify entity @s armor.legs {function:"set_custom_data",tag:{chance:1b}}
execute as @e[type=#tag_lib:ai_mobs,tag=!loot_equipment] run item modify entity @s saddle {function:"set_custom_data",tag:{chance:1b}}
execute as @e[type=#tag_lib:ai_mobs,tag=!loot_equipment] run data modify entity @s drop_chances set value {mainhand:2f,offhand:2f,feet:2f,legs:2f,chest:2f,head:2f,body:2f,saddle:2f}
tag @e[type=#tag_lib:ai_mobs,tag=!loot_equipment] add loot_equipment
execute as @e[type=item,tag=check] run function loot_equipment:kill with storage loot_equipment:storage
execute run tag @e[type=item,tag=!loot_equipment] add check
execute run tag @e[type=item] add loot_equipment