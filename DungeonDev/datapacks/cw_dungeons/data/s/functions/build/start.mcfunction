# clear any prev. doors
kill @e[type=marker,tag=dg.door,scores={dg.depth=0..}]
scoreboard players set @e[type=marker,tag=dg.room] dg.placed 0

# specify what level / pool to use
tag @e remove dg.level
execute as @e[type=marker,tag=dg.room] if score @s dg.level = .level dg.build run tag @s add dg.level

## handle build settings ##
scoreboard players operation .max dg.depth = .max_depth dg.build
execute if score .seeded dg.build matches 1 if score .seed dg.build matches -2147483647..2147483647 run scoreboard players operation #lcg dg = .seed dg.build
execute if score .seeded dg.build matches 1 if score .seed dg.build matches -2147483647..2147483647 run scoreboard players reset .seed dg.build
execute if score .seeded dg.build matches 1 run scoreboard players operation #seed dg = #lcg dg

# place starting dungeon here
function s:dungeons/root

# initialize room depth scores
scoreboard players set @e[type=marker,tag=dg.door,distance=..15] dg.depth 0

# start loop
scoreboard players set .global dg.depth 0
schedule function s:build/loop 5t

# dyna clear start
scoreboard players set #delayed-start dg 1
execute if score .dyna-clear dg.build matches 1 run schedule function s:build/dynaclear/start 1t