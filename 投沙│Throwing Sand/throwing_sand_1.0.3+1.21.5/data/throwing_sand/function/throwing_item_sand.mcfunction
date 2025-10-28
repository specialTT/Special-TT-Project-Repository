execute if items entity @s weapon.mainhand sand run item modify entity @s weapon.mainhand {function:"set_count",add:true,count:-1}
execute if items entity @s weapon.mainhand red_sand run item modify entity @s weapon.mainhand {function:"set_count",add:true,count:-1}
execute if items entity @s weapon.offhand sand unless items entity @s weapon.offhand sand run item modify entity @s weapon.offhand {function:"set_count",add:true,count:-1}
execute if items entity @s weapon.offhand sand unless items entity @s weapon.offhand red_sand run item modify entity @s weapon.offhand {function:"set_count",add:true,count:-1}
execute if items entity @s weapon.offhand red_sand unless items entity @s weapon.offhand sand run item modify entity @s weapon.offhand {function:"set_count",add:true,count:-1}
execute if items entity @s weapon.offhand red_sand unless items entity @s weapon.offhand red_sand run item modify entity @s weapon.offhand {function:"set_count",add:true,count:-1}
execute if items entity @s weapon.mainhand sand run data modify entity @s data.type_of_sand_to_throw set value "sand"
execute if items entity @s weapon.mainhand red_sand run data modify entity @s data.type_of_sand_to_throw set value "red_sand"
execute if items entity @s weapon.offhand sand unless items entity @s weapon.offhand sand run data modify entity @s data.type_of_sand_to_throw set value "sand"
execute if items entity @s weapon.offhand sand unless items entity @s weapon.offhand red_sand run data modify entity @s data.type_of_sand_to_throw set value "sand"
execute if items entity @s weapon.offhand red_sand unless items entity @s weapon.offhand sand run data modify entity @s data.type_of_sand_to_throw set value "red_sand"
execute if items entity @s weapon.offhand red_sand unless items entity @s weapon.offhand red_sand run data modify entity @s data.type_of_sand_to_throw set value "red_sand"
function throwing_sand:holding_sand with entity @s data