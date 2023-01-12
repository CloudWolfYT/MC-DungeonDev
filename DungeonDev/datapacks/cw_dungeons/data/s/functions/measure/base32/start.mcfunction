# Measures the maximum available volume as a metric of space from the edge of a room
# .l = blocks going left, .r = blocks going right, .u = blocks going up, .d = blocks going down
#
# this one caps at 32 max in either direction, equating a volume of 64x64x32, has some implicit
# vertical bias, since there is no unique solution to the problem. uses pattern indexing.
# each quadrant "q" of checks is repeated and mirrored around the axis.

# measure 4 quadrants
function s:measure/base32/quad_up
scoreboard players operation #q1h dg = #h dg
scoreboard players operation #q1w dg = #w dg
execute positioned ^-1 ^ ^ rotated ~180 ~ run function s:measure/base32/quad_up
scoreboard players operation #q2h dg = #h dg
scoreboard players operation #q2w dg = #w dg
execute positioned ^ ^-1 ^ run function s:measure/base32/quad_down
scoreboard players operation #q3h dg = #h dg
scoreboard players operation #q3w dg = #w dg
execute positioned ^-1 ^-1 ^ rotated ~180 ~ run function s:measure/base32/quad_down
scoreboard players operation #q4h dg = #h dg
scoreboard players operation #q4w dg = #w dg

# overlapping quadrants
scoreboard players operation #q1h dg < #q2h dg
scoreboard players operation #q2h dg = #q1h dg
scoreboard players operation #q1w dg < #q3w dg
scoreboard players operation #q3w dg = #q1w dg
scoreboard players operation #q3h dg < #q4h dg
scoreboard players operation #q4h dg = #q3h dg
scoreboard players operation #q2w dg < #q4w dg
scoreboard players operation #q4w dg = #q2w dg

#tellraw @a [{"text":"Q1 = ["},{"score":{"name":"#q1h","objective":"dg"}},{"text":","},{"score":{"name":"#q1w","objective":"dg"}},{"text":"]"}]
#tellraw @a [{"text":"Q2 = ["},{"score":{"name":"#q2h","objective":"dg"}},{"text":","},{"score":{"name":"#q2w","objective":"dg"}},{"text":"]"}]
#tellraw @a [{"text":"Q3 = ["},{"score":{"name":"#q3h","objective":"dg"}},{"text":","},{"score":{"name":"#q3w","objective":"dg"}},{"text":"]"}]
#tellraw @a [{"text":"Q4 = ["},{"score":{"name":"#q4h","objective":"dg"}},{"text":","},{"score":{"name":"#q4w","objective":"dg"}},{"text":"]"}]

# total area
scoreboard players operation #th dg = #q1h dg
scoreboard players operation #th dg += #q3h dg
scoreboard players operation #tw dg = #q1w dg
scoreboard players operation #tw dg += #q2w dg
scoreboard players remove #th dg 1
scoreboard players remove #tw dg 1

scoreboard players set #td dg 1
scoreboard players set #stop dg 0
#execute if score #stop dg matches 0 positioned ^ ^ ^0 run function s:measure/base32/depth/start
execute if score #stop dg matches 0 positioned ^ ^ ^4 run function s:measure/base32/depth/start
execute if score #stop dg matches 0 positioned ^ ^ ^8 run function s:measure/base32/depth/start
execute if score #stop dg matches 0 positioned ^ ^ ^12 run function s:measure/base32/depth/start
execute if score #stop dg matches 0 positioned ^ ^ ^16 run function s:measure/base32/depth/start
execute if score #stop dg matches 0 positioned ^ ^ ^20 run function s:measure/base32/depth/start
execute if score #stop dg matches 0 positioned ^ ^ ^24 run function s:measure/base32/depth/start
execute if score #stop dg matches 0 positioned ^ ^ ^28 run function s:measure/base32/depth/start

# measures -> door dimensions
scoreboard players operation .l dg = #q1w dg
scoreboard players operation .l dg *= #4 constant
scoreboard players remove .l dg 1
scoreboard players operation .u dg = #q1h dg
scoreboard players operation .u dg *= #4 constant
scoreboard players remove .u dg 1
scoreboard players operation .r dg = #q2w dg
scoreboard players operation .r dg *= #4 constant
scoreboard players operation .d dg = #q3h dg
scoreboard players operation .d dg *= #4 constant
scoreboard players operation .z dg = #td dg
scoreboard players operation .z dg *= #4 constant
scoreboard players remove .z dg 1