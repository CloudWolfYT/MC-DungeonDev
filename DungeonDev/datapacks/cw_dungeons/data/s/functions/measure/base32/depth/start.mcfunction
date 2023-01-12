# checks if the calculated area is ever intersected when pushed back
# once intersect it stops.

scoreboard players operation #h dg = #q1h dg
scoreboard players operation #w dg = #q1w dg
execute positioned ^ ^ ^ run function s:measure/base32/depth/depth/quad_up
scoreboard players operation #h dg = #q2h dg
scoreboard players operation #w dg = #q2w dg
execute positioned ^-1 ^ ^ run function s:measure/base32/depth/quad_up_rev
scoreboard players operation #h dg = #q3h dg
scoreboard players operation #w dg = #q3w dg
execute positioned ^ ^-1 ^ run function s:measure/base32/depth/quad_down
scoreboard players operation #h dg = #q4h dg
scoreboard players operation #w dg = #q4w dg
execute positioned ^-1 ^-1 ^ run function s:measure/base32/depth/quad_down_rev

#execute if score #stop dg matches 1 run say stop
#execute if score #stop dg matches 0 run say continue

execute if score #stop dg matches 0 run scoreboard players add #td dg 1