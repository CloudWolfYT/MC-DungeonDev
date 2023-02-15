# happens if a room is not placed

execute if entity @s[tag=dg.door.n] run function s:build/door/deadend_n
execute if entity @s[tag=dg.door.s] run function s:build/door/deadend_s
execute if entity @s[tag=dg.door.e] run function s:build/door/deadend_e
execute if entity @s[tag=dg.door.w] run function s:build/door/deadend_w