# used in dynaclear to indicate it is a delayed start
scoreboard players set #delayed-start dg 0

# if non-seeded randomization, use sort=random to pick rooms
execute if score .seeded dg.build matches 0 as @e[type=marker,tag=dg.door,scores={dg.depth=0},sort=random,limit=30] at @s run function s:build/door/start
# if seeded, you have to use lcg to pick doors randomly
execute if score .seeded dg.build matches 1 run function s:build/seeded/door/start

# count the doors that need to be placed on this level
execute store result score #hasDoors? dg if entity @e[type=marker,tag=dg.door,scores={dg.depth=..0}]

# if there are no more doors to place, go to next level
execute if score #hasDoors? dg matches 0 run scoreboard players add .global dg.depth 1
execute if score #hasDoors? dg matches 0 run scoreboard players remove @e[type=marker,tag=dg.door,scores={dg.depth=1..}] dg.depth 1

# if there is no more doors and the depth reached max, end. otherwise loop!
scoreboard players operation #bool1 dg = #hasDoors? dg
execute if score .global dg.depth < .max dg.depth run scoreboard players set #bool1 dg 1
execute if score #bool1 dg matches 0 run function s:build/loop_end
execute if score #bool1 dg matches 1 run schedule function s:build/loop 1t