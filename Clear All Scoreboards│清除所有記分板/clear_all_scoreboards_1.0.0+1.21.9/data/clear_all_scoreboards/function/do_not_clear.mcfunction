data modify storage clear_all_scoreboards:storage remove set from storage clear_all_scoreboards:storage do_not_clear[0]
function clear_all_scoreboards:remove with storage clear_all_scoreboards:storage
data remove storage clear_all_scoreboards:storage do_not_clear[0]
execute if data storage clear_all_scoreboards:storage do_not_clear[0] run function clear_all_scoreboards:do_not_clear