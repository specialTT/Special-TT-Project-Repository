execute if block ~ ~-0.25 ~ snow[layers=8] run kill @s
execute if block ~ ~-0.25 ~ snow[layers=8] run return run setblock ~ ~ ~ snow[layers=1]
execute if block ~ ~ ~ snow run kill @s
execute if block ~ ~ ~ snow[layers=7] run return run setblock ~ ~ ~ snow[layers=8]
execute if block ~ ~ ~ snow[layers=6] run return run setblock ~ ~ ~ snow[layers=7]
execute if block ~ ~ ~ snow[layers=5] run return run setblock ~ ~ ~ snow[layers=6]
execute if block ~ ~ ~ snow[layers=4] run return run setblock ~ ~ ~ snow[layers=5]
execute if block ~ ~ ~ snow[layers=3] run return run setblock ~ ~ ~ snow[layers=4]
execute if block ~ ~ ~ snow[layers=2] run return run setblock ~ ~ ~ snow[layers=3]
execute if block ~ ~ ~ snow[layers=1] run return run setblock ~ ~ ~ snow[layers=2]