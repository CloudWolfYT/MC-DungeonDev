# measure 4 quadrants
function s:measure/base16/quad_up
scoreboard players operation #q1h dg = #h dg
scoreboard players operation #q1w dg = #w dg
execute rotated ~180 ~ run function s:measure/base16/quad_up
scoreboard players operation #q2h dg = #h dg
scoreboard players operation #q2w dg = #w dg
function s:measure/base16/quad_down
scoreboard players operation #q3h dg = #h dg
scoreboard players operation #q3w dg = #w dg
execute rotated ~180 ~ run function s:measure/base16/quad_down
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

# total area
scoreboard players operation #th dg = #q1h dg
scoreboard players operation #th dg += #q3h dg
scoreboard players operation #tw dg = #q1w dg
scoreboard players operation #tw dg += #q2w dg
scoreboard players remove #th dg 1
scoreboard players remove #tw dg 1

scoreboard players set #td dg 1
scoreboard players set #stop dg 0
execute if score #stop dg matches 0 positioned ^ ^ ^4 run function s:measure/base16/depth
execute if score #stop dg matches 0 positioned ^ ^ ^8 run function s:measure/base16/depth
execute if score #stop dg matches 0 positioned ^ ^ ^12 run function s:measure/base16/depth

# measures -> door dimensions
scoreboard players operation .l dg = #q1w dg
scoreboard players remove .l dg 1
scoreboard players operation .l dg *= #4 constant
scoreboard players operation .u dg = #q1h dg
scoreboard players remove .u dg 1
scoreboard players operation .u dg *= #4 constant
scoreboard players operation .r dg = #q2w dg
scoreboard players remove .r dg 1
scoreboard players operation .r dg *= #4 constant
scoreboard players operation .d dg = #q3h dg
scoreboard players remove .d dg 1
scoreboard players operation .d dg *= #4 constant
scoreboard players operation .z dg = #td dg
scoreboard players remove .z dg 1
scoreboard players operation .z dg *= #4 constant