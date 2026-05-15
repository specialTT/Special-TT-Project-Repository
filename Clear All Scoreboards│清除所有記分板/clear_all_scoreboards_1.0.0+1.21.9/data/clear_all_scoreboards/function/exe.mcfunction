execute unless block ~ ~-1 ~ command_block{Command:"scoreboard objectives list",auto:true} run tellraw @s {text:"Execution failed.",color:"red"}
execute if block ~ ~-1 ~ command_block{Command:"scoreboard objectives list",auto:true} run tellraw @s {text:"Scoreboard cleared.",color:"white"}
data modify storage clear_all_scoreboards:storage scoreboard_list set from block ~ ~-1 ~ LastOutput.extra[0].with[1].extra
$data modify storage clear_all_scoreboards:storage do_not_clear set value $(do_not_clear)
function clear_all_scoreboards:do_not_clear
function clear_all_scoreboards:remove_scoreboards
fill ~ ~-1 ~ ~ ~-1 ~ air replace command_block{Command:"scoreboard objectives list",auto:true} destroy