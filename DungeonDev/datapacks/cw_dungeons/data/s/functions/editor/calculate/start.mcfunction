# go to any markers along each face of the structure, then calculate their distance from the edge
# save that as a set of scores; left, right, up, down.

execute store result score #pX dg run data get block ~ ~-1 ~ posX
execute store result score #pY dg run data get block ~ ~-1 ~ posY
execute store result score #pZ dg run data get block ~ ~-1 ~ posZ
execute store result score #sX dg run data get block ~ ~-1 ~ sizeX
execute store result score #sY dg run data get block ~ ~-1 ~ sizeY
execute store result score #sZ dg run data get block ~ ~-1 ~ sizeZ

summon marker ~ ~ ~ {Tags:["dg.calc"]}

execute store result score #oX dg run data get entity @s Pos[0]
execute store result score #oY dg run data get entity @s Pos[1]
scoreboard players remove #oY dg 1
execute store result score #oZ dg run data get entity @s Pos[2]
execute store result entity @e[type=marker,tag=dg.calc,limit=1] Pos[0] double 1.0 run scoreboard players operation #oX dg += #pX dg
execute store result entity @e[type=marker,tag=dg.calc,limit=1] Pos[1] double 1.0 run scoreboard players operation #oY dg += #pY dg
execute store result entity @e[type=marker,tag=dg.calc,limit=1] Pos[2] double 1.0 run scoreboard players operation #oZ dg += #pZ dg

# Calculate and Store Measurements
scoreboard players operation @s dg.door.zX = #sX dg
scoreboard players operation @s dg.door.zY = #sY dg
scoreboard players operation @s dg.door.zZ = #sZ dg
scoreboard players set .l dg 9999
scoreboard players set .r dg 9999
scoreboard players set .u dg 9999
scoreboard players set .d dg 9999
execute at @e[type=marker,tag=dg.calc] as @e[type=marker,tag=dg.door.n,dx=31,dy=31,dz=1,sort=nearest,limit=1] run function s:editor/calculate/north
scoreboard players operation @s dg.door.n.l = .l dg
scoreboard players operation @s dg.door.n.r = .r dg
scoreboard players operation @s dg.door.n.u = .u dg
scoreboard players operation @s dg.door.n.d = .d dg
scoreboard players set .l dg 9999
scoreboard players set .r dg 9999
scoreboard players set .u dg 9999
scoreboard players set .d dg 9999
execute at @e[type=marker,tag=dg.calc] as @e[type=marker,tag=dg.door.w,dx=1,dy=31,dz=31,sort=nearest,limit=1] run function s:editor/calculate/west
scoreboard players operation @s dg.door.w.l = .l dg
scoreboard players operation @s dg.door.w.r = .r dg
scoreboard players operation @s dg.door.w.u = .u dg
scoreboard players operation @s dg.door.w.d = .d dg
scoreboard players set .l dg 9999
scoreboard players set .r dg 9999
scoreboard players set .u dg 9999
scoreboard players set .d dg 9999
scoreboard players remove #sX dg 1
scoreboard players remove #sY dg 1
scoreboard players remove #sZ dg 1
execute store result entity @e[type=marker,tag=dg.calc,limit=1] Pos[0] double 1.0 run scoreboard players operation #oX dg += #sX dg
execute store result entity @e[type=marker,tag=dg.calc,limit=1] Pos[1] double 1.0 run scoreboard players operation #oY dg += #sY dg
execute store result entity @e[type=marker,tag=dg.calc,limit=1] Pos[2] double 1.0 run scoreboard players operation #oZ dg += #sZ dg
execute at @e[type=marker,tag=dg.calc] as @e[type=marker,tag=dg.door.e,dx=-1,dy=-31,dz=-31,sort=nearest,limit=1] run function s:editor/calculate/east
scoreboard players operation @s dg.door.e.l = .l dg
scoreboard players operation @s dg.door.e.r = .r dg
scoreboard players operation @s dg.door.e.u = .u dg
scoreboard players operation @s dg.door.e.d = .d dg
scoreboard players set .l dg 9999
scoreboard players set .r dg 9999
scoreboard players set .u dg 9999
scoreboard players set .d dg 9999
execute at @e[type=marker,tag=dg.calc] as @e[type=marker,tag=dg.door.s,dx=-31,dy=-31,dz=-1,sort=nearest,limit=1] run function s:editor/calculate/south
scoreboard players operation @s dg.door.s.l = .l dg
scoreboard players operation @s dg.door.s.r = .r dg
scoreboard players operation @s dg.door.s.u = .u dg
scoreboard players operation @s dg.door.s.d = .d dg

kill @e[type=marker,tag=dg.calc]

#function s:editor/calculate/print
function s:editor/door_menu/start