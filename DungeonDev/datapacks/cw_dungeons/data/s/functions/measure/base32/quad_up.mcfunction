# checks a quadrant for largest area of air (1 -64 1 has air)
# uses id's to store what pattern / shape is being used.

scoreboard players set .id dg 0
# 1x1
execute if blocks ^ ^ ^ ^3 ^3 ^ 1 -64 1 all run scoreboard players set .id dg 1
# 2x2
execute if blocks ^ ^ ^ ^3 ^7 ^ 1 -64 1 all run scoreboard players set .id dg 2
execute if blocks ^ ^ ^ ^7 ^3 ^ 1 -64 1 all run scoreboard players set .id dg 3
execute if blocks ^ ^ ^ ^7 ^7 ^ 1 -64 1 all run scoreboard players set .id dg 4
# 3x3
execute if blocks ^ ^ ^ ^3 ^11 ^ 1 -64 1 all run scoreboard players set .id dg 5
execute if blocks ^ ^ ^ ^7 ^11 ^ 1 -64 1 all run scoreboard players set .id dg 6
execute if blocks ^ ^ ^ ^11 ^3 ^ 1 -64 1 all run scoreboard players set .id dg 7
execute if blocks ^ ^ ^ ^11 ^7 ^ 1 -64 1 all run scoreboard players set .id dg 8
execute if blocks ^ ^ ^ ^11 ^11 ^ 1 -64 1 all run scoreboard players set .id dg 9
# 4x4
execute if blocks ^ ^ ^ ^3 ^15 ^ 1 -64 1 all run scoreboard players set .id dg 10
execute if blocks ^ ^ ^ ^7 ^15 ^ 1 -64 1 all run scoreboard players set .id dg 11
execute if blocks ^ ^ ^ ^11 ^15 ^ 1 -64 1 all run scoreboard players set .id dg 12
execute if blocks ^ ^ ^ ^15 ^3 ^ 1 -64 1 all run scoreboard players set .id dg 13
execute if blocks ^ ^ ^ ^15 ^7 ^ 1 -64 1 all run scoreboard players set .id dg 14
execute if blocks ^ ^ ^ ^15 ^11 ^ 1 -64 1 all run scoreboard players set .id dg 15
execute if blocks ^ ^ ^ ^15 ^15 ^ 1 -64 1 all run scoreboard players set .id dg 16
# 5x5
execute if blocks ^ ^ ^ ^3 ^19 ^ 1 -64 1 all run scoreboard players set .id dg 17
execute if blocks ^ ^ ^ ^7 ^19 ^ 1 -64 1 all run scoreboard players set .id dg 18
execute if blocks ^ ^ ^ ^11 ^19 ^ 1 -64 1 all run scoreboard players set .id dg 19
execute if blocks ^ ^ ^ ^15 ^19 ^ 1 -64 1 all run scoreboard players set .id dg 20
execute if blocks ^ ^ ^ ^19 ^3 ^ 1 -64 1 all run scoreboard players set .id dg 21
execute if blocks ^ ^ ^ ^19 ^7 ^ 1 -64 1 all run scoreboard players set .id dg 22
execute if blocks ^ ^ ^ ^19 ^11 ^ 1 -64 1 all run scoreboard players set .id dg 23
execute if blocks ^ ^ ^ ^19 ^15 ^ 1 -64 1 all run scoreboard players set .id dg 24
execute if blocks ^ ^ ^ ^19 ^19 ^ 1 -64 1 all run scoreboard players set .id dg 25
# 6x6
execute if blocks ^ ^ ^ ^3 ^23 ^ 1 -64 1 all run scoreboard players set .id dg 26
execute if blocks ^ ^ ^ ^7 ^23 ^ 1 -64 1 all run scoreboard players set .id dg 27
execute if blocks ^ ^ ^ ^11 ^23 ^ 1 -64 1 all run scoreboard players set .id dg 28
execute if blocks ^ ^ ^ ^15 ^23 ^ 1 -64 1 all run scoreboard players set .id dg 29
execute if blocks ^ ^ ^ ^19 ^23 ^ 1 -64 1 all run scoreboard players set .id dg 30
execute if blocks ^ ^ ^ ^23 ^3 ^ 1 -64 1 all run scoreboard players set .id dg 31
execute if blocks ^ ^ ^ ^23 ^7 ^ 1 -64 1 all run scoreboard players set .id dg 32
execute if blocks ^ ^ ^ ^23 ^11 ^ 1 -64 1 all run scoreboard players set .id dg 33
execute if blocks ^ ^ ^ ^23 ^15 ^ 1 -64 1 all run scoreboard players set .id dg 34
execute if blocks ^ ^ ^ ^23 ^19 ^ 1 -64 1 all run scoreboard players set .id dg 35
execute if blocks ^ ^ ^ ^23 ^23 ^ 1 -64 1 all run scoreboard players set .id dg 36
# 7x7
execute if blocks ^ ^ ^ ^3 ^27 ^ 1 -64 1 all run scoreboard players set .id dg 37
execute if blocks ^ ^ ^ ^7 ^27 ^ 1 -64 1 all run scoreboard players set .id dg 38
execute if blocks ^ ^ ^ ^11 ^27 ^ 1 -64 1 all run scoreboard players set .id dg 39
execute if blocks ^ ^ ^ ^15 ^27 ^ 1 -64 1 all run scoreboard players set .id dg 40
execute if blocks ^ ^ ^ ^19 ^27 ^ 1 -64 1 all run scoreboard players set .id dg 41
execute if blocks ^ ^ ^ ^23 ^27 ^ 1 -64 1 all run scoreboard players set .id dg 42
execute if blocks ^ ^ ^ ^27 ^3 ^ 1 -64 1 all run scoreboard players set .id dg 43
execute if blocks ^ ^ ^ ^27 ^7 ^ 1 -64 1 all run scoreboard players set .id dg 44
execute if blocks ^ ^ ^ ^27 ^11 ^ 1 -64 1 all run scoreboard players set .id dg 45
execute if blocks ^ ^ ^ ^27 ^15 ^ 1 -64 1 all run scoreboard players set .id dg 46
execute if blocks ^ ^ ^ ^27 ^19 ^ 1 -64 1 all run scoreboard players set .id dg 47
execute if blocks ^ ^ ^ ^27 ^23 ^ 1 -64 1 all run scoreboard players set .id dg 48
execute if blocks ^ ^ ^ ^27 ^27 ^ 1 -64 1 all run scoreboard players set .id dg 49
# 8x8
execute if blocks ^ ^ ^ ^3 ^31 ^ 1 -64 1 all run scoreboard players set .id dg 50
execute if blocks ^ ^ ^ ^7 ^31 ^ 1 -64 1 all run scoreboard players set .id dg 51
execute if blocks ^ ^ ^ ^11 ^31 ^ 1 -64 1 all run scoreboard players set .id dg 52
execute if blocks ^ ^ ^ ^15 ^31 ^ 1 -64 1 all run scoreboard players set .id dg 53
execute if blocks ^ ^ ^ ^19 ^31 ^ 1 -64 1 all run scoreboard players set .id dg 54
execute if blocks ^ ^ ^ ^23 ^31 ^ 1 -64 1 all run scoreboard players set .id dg 55
execute if blocks ^ ^ ^ ^27 ^31 ^ 1 -64 1 all run scoreboard players set .id dg 56
execute if blocks ^ ^ ^ ^31 ^3 ^ 1 -64 1 all run scoreboard players set .id dg 57
execute if blocks ^ ^ ^ ^31 ^7 ^ 1 -64 1 all run scoreboard players set .id dg 58
execute if blocks ^ ^ ^ ^31 ^11 ^ 1 -64 1 all run scoreboard players set .id dg 59
execute if blocks ^ ^ ^ ^31 ^15 ^ 1 -64 1 all run scoreboard players set .id dg 60
execute if blocks ^ ^ ^ ^31 ^19 ^ 1 -64 1 all run scoreboard players set .id dg 61
execute if blocks ^ ^ ^ ^31 ^23 ^ 1 -64 1 all run scoreboard players set .id dg 62
execute if blocks ^ ^ ^ ^31 ^27 ^ 1 -64 1 all run scoreboard players set .id dg 63
execute if blocks ^ ^ ^ ^31 ^31 ^ 1 -64 1 all run scoreboard players set .id dg 64

scoreboard players set #h dg 0
scoreboard players set #w dg 0
# 1x1
execute if score .id dg matches 1 run scoreboard players set #h dg 1
execute if score .id dg matches 1 run scoreboard players set #w dg 1
# 2x2
execute if score .id dg matches 2 run scoreboard players set #h dg 2
execute if score .id dg matches 3 run scoreboard players set #h dg 1
execute if score .id dg matches 4 run scoreboard players set #h dg 2
execute if score .id dg matches 2 run scoreboard players set #w dg 1
execute if score .id dg matches 3 run scoreboard players set #w dg 2
execute if score .id dg matches 4 run scoreboard players set #w dg 2
# 3x3
execute if score .id dg matches 5 run scoreboard players set #h dg 3
execute if score .id dg matches 6 run scoreboard players set #h dg 3
execute if score .id dg matches 7 run scoreboard players set #h dg 1
execute if score .id dg matches 8 run scoreboard players set #h dg 2
execute if score .id dg matches 9 run scoreboard players set #h dg 3
execute if score .id dg matches 5 run scoreboard players set #w dg 1
execute if score .id dg matches 6 run scoreboard players set #w dg 2
execute if score .id dg matches 7 run scoreboard players set #w dg 3
execute if score .id dg matches 8 run scoreboard players set #w dg 3
execute if score .id dg matches 9 run scoreboard players set #w dg 3
# 4x4
execute if score .id dg matches 10 run scoreboard players set #h dg 4
execute if score .id dg matches 11 run scoreboard players set #h dg 4
execute if score .id dg matches 12 run scoreboard players set #h dg 4
execute if score .id dg matches 13 run scoreboard players set #h dg 1
execute if score .id dg matches 14 run scoreboard players set #h dg 2
execute if score .id dg matches 15 run scoreboard players set #h dg 3
execute if score .id dg matches 16 run scoreboard players set #h dg 4
execute if score .id dg matches 10 run scoreboard players set #w dg 1
execute if score .id dg matches 11 run scoreboard players set #w dg 2
execute if score .id dg matches 12 run scoreboard players set #w dg 3
execute if score .id dg matches 13 run scoreboard players set #w dg 4
execute if score .id dg matches 14 run scoreboard players set #w dg 4
execute if score .id dg matches 15 run scoreboard players set #w dg 4
execute if score .id dg matches 16 run scoreboard players set #w dg 4
# 5x5
execute if score .id dg matches 17 run scoreboard players set #h dg 5
execute if score .id dg matches 18 run scoreboard players set #h dg 5
execute if score .id dg matches 19 run scoreboard players set #h dg 5
execute if score .id dg matches 20 run scoreboard players set #h dg 5
execute if score .id dg matches 21 run scoreboard players set #h dg 1
execute if score .id dg matches 22 run scoreboard players set #h dg 2
execute if score .id dg matches 23 run scoreboard players set #h dg 3
execute if score .id dg matches 24 run scoreboard players set #h dg 4
execute if score .id dg matches 25 run scoreboard players set #h dg 5
execute if score .id dg matches 17 run scoreboard players set #w dg 1
execute if score .id dg matches 18 run scoreboard players set #w dg 2
execute if score .id dg matches 19 run scoreboard players set #w dg 3
execute if score .id dg matches 20 run scoreboard players set #w dg 4
execute if score .id dg matches 21 run scoreboard players set #w dg 5
execute if score .id dg matches 22 run scoreboard players set #w dg 5
execute if score .id dg matches 23 run scoreboard players set #w dg 5
execute if score .id dg matches 24 run scoreboard players set #w dg 5
execute if score .id dg matches 25 run scoreboard players set #w dg 5
# 6x6
execute if score .id dg matches 26 run scoreboard players set #h dg 6
execute if score .id dg matches 27 run scoreboard players set #h dg 6
execute if score .id dg matches 28 run scoreboard players set #h dg 6
execute if score .id dg matches 29 run scoreboard players set #h dg 6
execute if score .id dg matches 30 run scoreboard players set #h dg 6
execute if score .id dg matches 31 run scoreboard players set #h dg 1
execute if score .id dg matches 32 run scoreboard players set #h dg 2
execute if score .id dg matches 33 run scoreboard players set #h dg 3
execute if score .id dg matches 34 run scoreboard players set #h dg 4
execute if score .id dg matches 35 run scoreboard players set #h dg 5
execute if score .id dg matches 36 run scoreboard players set #h dg 6
execute if score .id dg matches 26 run scoreboard players set #w dg 1
execute if score .id dg matches 27 run scoreboard players set #w dg 2
execute if score .id dg matches 28 run scoreboard players set #w dg 3
execute if score .id dg matches 29 run scoreboard players set #w dg 4
execute if score .id dg matches 30 run scoreboard players set #w dg 5
execute if score .id dg matches 31 run scoreboard players set #w dg 6
execute if score .id dg matches 32 run scoreboard players set #w dg 6
execute if score .id dg matches 33 run scoreboard players set #w dg 6
execute if score .id dg matches 34 run scoreboard players set #w dg 6
execute if score .id dg matches 35 run scoreboard players set #w dg 6
execute if score .id dg matches 36 run scoreboard players set #w dg 6
# 7x7
execute if score .id dg matches 37 run scoreboard players set #h dg 7
execute if score .id dg matches 38 run scoreboard players set #h dg 7
execute if score .id dg matches 39 run scoreboard players set #h dg 7
execute if score .id dg matches 40 run scoreboard players set #h dg 7
execute if score .id dg matches 41 run scoreboard players set #h dg 7
execute if score .id dg matches 42 run scoreboard players set #h dg 7
execute if score .id dg matches 43 run scoreboard players set #h dg 1
execute if score .id dg matches 44 run scoreboard players set #h dg 2
execute if score .id dg matches 45 run scoreboard players set #h dg 3
execute if score .id dg matches 46 run scoreboard players set #h dg 4
execute if score .id dg matches 47 run scoreboard players set #h dg 5
execute if score .id dg matches 48 run scoreboard players set #h dg 6
execute if score .id dg matches 49 run scoreboard players set #h dg 7
execute if score .id dg matches 37 run scoreboard players set #w dg 1
execute if score .id dg matches 38 run scoreboard players set #w dg 2
execute if score .id dg matches 39 run scoreboard players set #w dg 3
execute if score .id dg matches 40 run scoreboard players set #w dg 4
execute if score .id dg matches 41 run scoreboard players set #w dg 5
execute if score .id dg matches 42 run scoreboard players set #w dg 6
execute if score .id dg matches 43 run scoreboard players set #w dg 7
execute if score .id dg matches 44 run scoreboard players set #w dg 7
execute if score .id dg matches 45 run scoreboard players set #w dg 7
execute if score .id dg matches 46 run scoreboard players set #w dg 7
execute if score .id dg matches 47 run scoreboard players set #w dg 7
execute if score .id dg matches 48 run scoreboard players set #w dg 7
execute if score .id dg matches 49 run scoreboard players set #w dg 7
# 8x8
execute if score .id dg matches 50 run scoreboard players set #h dg 8
execute if score .id dg matches 51 run scoreboard players set #h dg 8
execute if score .id dg matches 52 run scoreboard players set #h dg 8
execute if score .id dg matches 53 run scoreboard players set #h dg 8
execute if score .id dg matches 54 run scoreboard players set #h dg 8
execute if score .id dg matches 55 run scoreboard players set #h dg 8
execute if score .id dg matches 56 run scoreboard players set #h dg 8
execute if score .id dg matches 57 run scoreboard players set #h dg 1
execute if score .id dg matches 58 run scoreboard players set #h dg 2
execute if score .id dg matches 59 run scoreboard players set #h dg 3
execute if score .id dg matches 60 run scoreboard players set #h dg 4
execute if score .id dg matches 61 run scoreboard players set #h dg 5
execute if score .id dg matches 62 run scoreboard players set #h dg 6
execute if score .id dg matches 63 run scoreboard players set #h dg 7
execute if score .id dg matches 64 run scoreboard players set #h dg 8
execute if score .id dg matches 50 run scoreboard players set #w dg 1
execute if score .id dg matches 51 run scoreboard players set #w dg 2
execute if score .id dg matches 52 run scoreboard players set #w dg 3
execute if score .id dg matches 53 run scoreboard players set #w dg 4
execute if score .id dg matches 54 run scoreboard players set #w dg 5
execute if score .id dg matches 55 run scoreboard players set #w dg 6
execute if score .id dg matches 56 run scoreboard players set #w dg 7
execute if score .id dg matches 57 run scoreboard players set #w dg 8
execute if score .id dg matches 58 run scoreboard players set #w dg 8
execute if score .id dg matches 59 run scoreboard players set #w dg 8
execute if score .id dg matches 60 run scoreboard players set #w dg 8
execute if score .id dg matches 61 run scoreboard players set #w dg 8
execute if score .id dg matches 62 run scoreboard players set #w dg 8
execute if score .id dg matches 63 run scoreboard players set #w dg 8
execute if score .id dg matches 64 run scoreboard players set #w dg 8