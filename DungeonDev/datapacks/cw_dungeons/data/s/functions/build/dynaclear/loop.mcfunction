execute if score #delayed-start dg matches 1 run schedule function s:build/loop 5t

execute if entity @e[type=marker,tag=dg.dynaclear,predicate=s:search_level] run schedule function s:build/dynaclear/loop 1t

execute as @e[type=marker,tag=dg.dynaclear,predicate=s:search_level,limit=30] run function s:build/dynaclear/clear/start