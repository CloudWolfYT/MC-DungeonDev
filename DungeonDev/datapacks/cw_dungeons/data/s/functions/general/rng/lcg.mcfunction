# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg dg *= #lcg constant
scoreboard players add #lcg dg 12345
scoreboard players operation out dg = #lcg dg