# check available volume
execute rotated 180 0 positioned ~ ~ ~-1 run function s:measure/base32/start

# tag all rooms that will fit! (a room that fits will have an opposing door with measurements
# less than the available space)
execute as @e[type=marker,tag=dg.room,tag=dg.level] if score @s dg.min_depth <= .global dg.depth if score @s dg.door.s.l <= .r dg if score @s dg.door.s.r <= .l dg if score @s dg.door.s.u <= .u dg if score @s dg.door.s.d <= .d dg if score @s dg.door.zZ <= .z dg run tag @s add dg.valid

# pick one of the tagged rooms using LCG (for weighting and seeding purposes)
function s:build/door/pick_room/start

# grab the chosen doors measurements
scoreboard players operation .l dg = @e[type=marker,tag=dg.choice] dg.door.s.l
scoreboard players operation .r dg = @e[type=marker,tag=dg.choice] dg.door.s.r
scoreboard players operation .u dg = @e[type=marker,tag=dg.choice] dg.door.s.u
scoreboard players operation .d dg = @e[type=marker,tag=dg.choice] dg.door.s.d
scoreboard players operation .z dg = @e[type=marker,tag=dg.choice] dg.door.zZ

# translate measurements to offset of the /place origin point
scoreboard players set #dx dg 0
scoreboard players operation #dx dg -= .r dg
scoreboard players set #dy dg 0
scoreboard players operation #dy dg -= .d dg
scoreboard players set #dz dg 0
scoreboard players operation #dz dg -= .z dg

# dynaclear calculations
execute if score .dyna-clear dg.build matches 1 run function s:build/dynaclear/scores

# /place the room
function s:build/door/place

# translate this door's depth to the newly placed door's depths
execute store result score @e[type=marker,tag=dg.new] dg.depth run scoreboard players add @s dg.depth 1
kill @e[type=marker,tag=dg.new,tag=dg.door.s]

tag @e remove dg.valid
tag @e remove dg.new
execute if score .dyna-clear dg.build matches 0 run kill @s
execute if score .dyna-clear dg.build matches 1 run function s:build/dynaclear/mark