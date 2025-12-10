execute unless block ~ ~ ~ air run tellraw @s {text:"Execution failed.",color:"red"}
execute if block ~ ~ ~ air run tellraw @s {text:"Execute?",click_event:{action:"suggest_command",command:"/function clear_all_scoreboards:exe {do_not_clear:[]}"},color:"white"}
fill ~ ~ ~ ~ ~ ~ command_block{Command:"scoreboard objectives list",auto:true} replace air
execute if block ~ ~ ~ command_block{Command:"scoreboard objectives list",auto:true} run tp @s ~ ~1 ~