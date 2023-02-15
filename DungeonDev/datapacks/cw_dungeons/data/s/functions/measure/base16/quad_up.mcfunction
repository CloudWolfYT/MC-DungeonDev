scoreboard players set #h dg 0
scoreboard players set #w dg 0

# first level, purgatory
execute if block ^ ^ ^ air run scoreboard players set #h dg 1
execute if block ^ ^ ^ air run scoreboard players set #w dg 1

# second level, 
execute if score #h dg matches 1 if block ^ ^4 ^ air run scoreboard players add #h dg 1
execute if score #h dg matches 1 if score #w dg matches 1 if block ^4 ^ ^ air run scoreboard players add #w dg 1
execute if score #h dg matches 2 if score #w dg matches 1 if block ^4 ^ ^ air if block ^4 ^4 ^ air run scoreboard players add #w dg 1

# third level
execute if score #h dg matches 2 if score #w dg matches 1 if block ^ ^8 ^ air run scoreboard players add #h dg 1
execute if score #h dg matches 2 if score #w dg matches 2 if block ^ ^8 ^ air if block ^4 ^8 ^ air run scoreboard players add #h dg 1
execute if score #h dg matches 1 if score #w dg matches 2 if block ^8 ^ ^ air run scoreboard players add #w dg 1
execute if score #h dg matches 2 if score #w dg matches 2 if block ^8 ^ ^ air if block ^8 ^4 ^ air run scoreboard players add #w dg 1
# upgrade
execute if score #h dg matches 3 if score #w dg matches 2 if block ^8 ^ ^ air if block ^8 ^4 ^ air if block ^8 ^8 ^ air run scoreboard players add #w dg 1
execute if score #h dg matches 2 if score #w dg matches 3 if block ^ ^8 ^ air if block ^4 ^8 ^ air if block ^8 ^8 ^ air run scoreboard players add #h dg 1

# fourth level
execute if score #h dg matches 1 if score #w dg matches 3 if block ^12 ^ ^ air run scoreboard players add #w dg 1
execute if score #h dg matches 2 if score #w dg matches 3 if block ^12 ^ ^ air if block ^12 ^4 ^ air run scoreboard players add #w dg 1
execute if score #h dg matches 3 if score #w dg matches 1 if block ^ ^12 ^ air run scoreboard players add #h dg 1
execute if score #h dg matches 3 if score #w dg matches 2 if block ^ ^12 ^ air if block ^4 ^12 ^ air run scoreboard players add #h dg 1
# 3x3, upgrade
execute if score #h dg matches 3 if score #w dg matches 3 if block ^ ^12 ^ air if block ^4 ^12 ^ air if block ^8 ^12 ^ air if block ^12 ^12 ^ air run scoreboard players add #h dg 1
execute if score #h dg matches 4 if score #w dg matches 3 if block ^12 ^ ^ air if block ^12 ^4 ^ air if block ^12 ^8 ^ air if block ^12 ^12 ^ air run scoreboard players add #w dg 1
execute if score #h dg matches 3 if score #w dg matches 3 if block ^ ^12 ^ air if block ^4 ^12 ^ air if block ^8 ^12 ^ air run scoreboard players add #h dg 1
execute if score #h dg matches 3 if score #w dg matches 3 if block ^12 ^ ^ air if block ^12 ^4 ^ air if block ^12 ^8 ^ air run scoreboard players add #w dg 1