advancement revoke @s only beacon_tweak:use_beacon
execute anchored eyes positioned ^ ^ ^ if block ~ ~ ~ beacon run summon marker ~ ~ ~ {Tags:["beacon_marker"]}
execute anchored eyes unless block ^ ^ ^ beacon positioned ^ ^ ^1 run function beacon_tweak:mark