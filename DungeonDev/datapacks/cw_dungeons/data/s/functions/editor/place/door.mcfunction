setblock ~ ~ ~ air

kill @e[type=marker,tag=dg.door,distance=..1]
kill @e[type=armor_stand,tag=dg.display,distance=..1]
summon marker ~ ~ ~ {Tags:["dg.door","dg"]}
execute if entity @p[y_rotation=-45..45] run tag @e[type=marker,tag=dg.door,distance=..1,limit=1] add dg.door.s
execute if entity @p[y_rotation=-45..45] run data modify block 0 -63 0 Text1 set value '{"text":"S"}'
execute if entity @p[y_rotation=45..135] run tag @e[type=marker,tag=dg.door,distance=..1,limit=1] add dg.door.w
execute if entity @p[y_rotation=45..135] run data modify block 0 -63 0 Text1 set value '{"text":"W"}'
execute if entity @p[y_rotation=135..-135] run tag @e[type=marker,tag=dg.door,distance=..1,limit=1] add dg.door.n
execute if entity @p[y_rotation=135..-135] run data modify block 0 -63 0 Text1 set value '{"text":"N"}'
execute if entity @p[y_rotation=-135..-45] run tag @e[type=marker,tag=dg.door,distance=..1,limit=1] add dg.door.e
execute if entity @p[y_rotation=-135..-45] run data modify block 0 -63 0 Text1 set value '{"text":"E"}'

data modify entity @e[type=marker,tag=dg.door,distance=..1,limit=1] data.CustomName set from block 0 -63 0 Text1