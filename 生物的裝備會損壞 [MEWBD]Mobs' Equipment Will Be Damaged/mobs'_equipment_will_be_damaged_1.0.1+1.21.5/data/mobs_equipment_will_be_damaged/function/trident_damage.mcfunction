execute if items entity @s weapon.mainhand *[minecraft:enchantment_glint_override=true] run tag @s add enchantment_glint_override
execute if items entity @s weapon.mainhand *[minecraft:enchantment_glint_override=true] run item modify entity @s weapon.mainhand {function:"set_components",components:{"minecraft:custom_data":{enchantment_glint_override:1b}}}
execute if items entity @s weapon.mainhand *[minecraft:enchantment_glint_override=false] run item modify entity @s weapon.mainhand {function:"set_components",components:{"minecraft:custom_data":{enchantment_glint_override:0b}}}
execute if data entity @s equipment.mainhand.components."minecraft:enchantments" run tag @s add enchantment_glint_override
item modify entity @s weapon.mainhand {function:"set_enchantments",enchantments:{"mobs_equipment_will_be_damaged:trident_damage":1}}
item modify entity @s[tag=!enchantment_glint_override] weapon.mainhand {function:"set_components",components:{"minecraft:enchantment_glint_override":false}}
tag @s remove enchantment_glint_override