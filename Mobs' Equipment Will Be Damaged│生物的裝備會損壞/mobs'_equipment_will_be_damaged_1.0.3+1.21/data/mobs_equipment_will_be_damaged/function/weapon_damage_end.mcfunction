$item modify entity @s weapon.mainhand {function:"set_enchantments",enchantments:{"mobs_equipment_will_be_damaged:weapon_damage":$(levels)}}
item modify entity @s[tag=!enchantment_glint_override] weapon.mainhand {function:"set_components",components:{"minecraft:enchantment_glint_override":false}}
tag @s remove enchantment_glint_override