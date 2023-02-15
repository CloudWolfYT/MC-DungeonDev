# remove any rooms that have been placed maximally
execute as @e[type=marker,tag=dg.valid] if score @s dg.max matches 0.. if score @s dg.placed >= @s dg.max run tag @s remove dg.valid

# get weighted choice range
scoreboard players set in dg 1
scoreboard players set in1 dg 0
execute as @e[type=marker,tag=dg.valid] run scoreboard players operation in1 dg += @s dg.weight

# get the weighted choice
execute if score in1 dg matches 1.. run function s:general/rng/range

# recurse till first valid is the choice.
execute if score in1 dg matches 1.. run function s:build/door/pick_room/loop

scoreboard players add @e[type=marker,tag=dg.choice] dg.placed 1