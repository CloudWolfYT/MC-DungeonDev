kill @e[type=marker,tag=dg.room,distance=..1]
summon marker ~ ~ ~ {Tags:["dg.room","dg"]}
data modify entity @e[type=marker,tag=dg.room,distance=..1,limit=1] data.CustomName set from block ~ ~ ~ CustomName
setblock ~ ~ ~ comparator
scoreboard players add @e[type=marker,tag=dg.room,distance=..1,limit=1] dg.level 0
scoreboard players set @e[type=marker,tag=dg.room,distance=..1,limit=1] dg.weight 1
scoreboard players set @e[type=marker,tag=dg.room,distance=..1,limit=1] dg.max -1
scoreboard players set @e[type=marker,tag=dg.room,distance=..1,limit=1] dg.min_depth 0