execute unless data storage clear_all_scoreboards:storage scoreboard_list[0].text run function clear_all_scoreboards:remove_scoreboard with storage clear_all_scoreboards:storage scoreboard_list[0].with[0]
data remove storage clear_all_scoreboards:storage scoreboard_list[0]
execute if data storage clear_all_scoreboards:storage scoreboard_list[0] run function clear_all_scoreboards:remove_scoreboards