# let the system know you placed a room
execute if entity @e[type=marker,tag=dg.choice] run scoreboard players set #placed dg 1

# move door to the /place origin such that it will align the opposing doors to touch
execute store result score #x dg run data get entity @s Pos[0]
execute store result score #y dg run data get entity @s Pos[1]
execute store result score #z dg run data get entity @s Pos[2]
execute store result entity @s Pos[0] double 1.0 run scoreboard players operation #x dg += #dx dg
execute store result entity @s Pos[1] double 1.0 run scoreboard players operation #y dg += #dy dg
execute store result entity @s Pos[2] double 1.0 run scoreboard players operation #z dg += #dz dg

# place room at right place
execute at @s as @e[type=marker,tag=dg.choice] run function s:dungeons/place

# tag any new doors in the room as new
execute at @s as @e[type=marker,tag=dg.door,dx=31,dy=31,dz=31] unless score @s dg.depth matches 0.. run tag @s add dg.new