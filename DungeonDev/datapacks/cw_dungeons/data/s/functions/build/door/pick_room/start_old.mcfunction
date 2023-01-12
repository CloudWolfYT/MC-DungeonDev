# give a unique id to each valid room
scoreboard players set .global dg.id 0
execute as @e[type=marker,tag=dg.valid] store result score @s dg.id run scoreboard players add .global dg.id 1

# pick a random ID with LCG
scoreboard players set in dg 1
scoreboard players operation in1 dg = .global dg.id
execute if score .global dg.id matches 1.. run function s:general/rng/range

# tag the room with the randomly selected ID
execute if score .global dg.id matches 1.. as @e[type=marker,tag=dg.valid] if score @s dg.id = out dg at @s run tag @s add dg.choice