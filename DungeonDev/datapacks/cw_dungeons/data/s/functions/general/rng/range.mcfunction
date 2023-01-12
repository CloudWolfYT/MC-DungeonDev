### Cloud Notes ###
# Newton-Raphson, 4 iterations approach
#
# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add in1 dg 1
scoreboard players operation #range dg = in1 dg
scoreboard players operation #range dg -= in dg

scoreboard players operation #m1 dg = #range dg
scoreboard players remove #m1 dg 1
function s:general/rng/zprivate/next_int
scoreboard players operation out dg += in dg

scoreboard players reset #m1 dg
scoreboard players remove in1 dg 1