$item replace entity @s weapon.$(hand) with minecraft:name_tag
$item modify entity @s weapon.$(hand) {function:"set_components",components:$(data)}