$scoreboard players set to_deduct h_temp $(count)
$execute if data block ~ ~ ~ Items[{Slot:0b,id:"$(id)"}] run function h_trade:do_deduct {slot:0b}
execute if score to_deduct h_temp matches 0 run return 1
$execute if data block ~ ~ ~ Items[{Slot:1b,id:"$(id)"}] run function h_trade:do_deduct {slot:1b}
execute if score to_deduct h_temp matches 0 run return 1
$execute if data block ~ ~ ~ Items[{Slot:2b,id:"$(id)"}] run function h_trade:do_deduct {slot:2b}
execute if score to_deduct h_temp matches 0 run return 1
$execute if data block ~ ~ ~ Items[{Slot:3b,id:"$(id)"}] run function h_trade:do_deduct {slot:3b}
execute if score to_deduct h_temp matches 0 run return 1
$execute if data block ~ ~ ~ Items[{Slot:4b,id:"$(id)"}] run function h_trade:do_deduct {slot:4b}
execute if score to_deduct h_temp matches 0 run return 1