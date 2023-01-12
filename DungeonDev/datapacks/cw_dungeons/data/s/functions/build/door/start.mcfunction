# try to place a room, depending on direction the door faces
scoreboard players set #placed dg 0
execute if entity @s[tag=dg.door.e] run function s:build/door/east
execute if entity @s[tag=dg.door.s] run function s:build/door/south
execute if entity @s[tag=dg.door.n] run function s:build/door/north
execute if entity @s[tag=dg.door.w] run function s:build/door/west

execute if score #placed dg matches 0 run function s:build/door/deadend
execute if score .tunnels dg.build matches 1 if score #placed dg matches 0 run function s:build/tunnel/spawn