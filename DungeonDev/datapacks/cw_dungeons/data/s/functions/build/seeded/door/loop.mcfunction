# assign a unique number to each door
scoreboard players set .global dg.id 0
execute as @e[type=marker,tag=dg.door,scores={dg.depth=0}] store result score @s dg.id run scoreboard players add .global dg.id 1

# pick one of those numbers randomly, uniformly
scoreboard players set in dg 1
scoreboard players operation in1 dg = .global dg.id
execute if score .global dg.id matches 1.. run function s:general/rng/range

# use the door that matches the randomly, uniformly chosen ID
execute if score .global dg.id matches 1.. as @e[type=marker,tag=dg.door] if score @s dg.id = out dg at @s run function s:build/door/start

# loop this for each door it needs to pick
scoreboard players remove #doors dg 1
execute if score #doors dg matches 1.. run function s:build/seeded/door/loop