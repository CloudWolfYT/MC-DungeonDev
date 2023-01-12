setblock ~ ~ ~ minecraft:comparator[mode=compare]
tellraw @p {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

tellraw @p {"text":" _____________________"}
tellraw @p ["",{"text":" |> "},{"nbt":"data.CustomName","entity":"@s","interpret":true}]
tellraw @p ["",{"text":" | "}]

tellraw @p ["",{"text":" | "},{"text":"Level: "},{"text":"<< ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/level_down"}},{"score":{"objective":"dg.level","name":"@s"}},{"text":" >>","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/level_up"}}]
tellraw @p ["",{"text":" | "},{"text":"Weight: "},{"text":"<< ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/weight_down"}},{"score":{"objective":"dg.weight","name":"@s"}},{"text":" >>","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/weight_up"}}]
tellraw @p ["",{"text":" | "},{"text":"Max:    "},{"text":"<< ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/max_down"}},{"score":{"objective":"dg.max","name":"@s"}},{"text":" >>","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/max_up"}}]
tellraw @p ["",{"text":" | "},{"text":"Min Depth: "},{"text":"<< ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/min_depth_down"}},{"score":{"objective":"dg.min_depth","name":"@s"}},{"text":" >>","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/min_depth_up"}}]

tellraw @p ["",{"text":" | "},{"text":"[Measure Room]","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/calculate/start"}}]

tellraw @a {"text":" | --[l,r,u,d]--"}
tellraw @a [{"text":" | N=["},{"score":{"objective":"dg.door.n.l","name":"@s"}},{"text":","},{"score":{"objective":"dg.door.n.r","name":"@s"}},{"text":","},{"score":{"objective":"dg.door.n.u","name":"@s"}},{"text":","},{"score":{"objective":"dg.door.n.d","name":"@s"}},{"text":"]"}]
tellraw @a [{"text":" | W=["},{"score":{"objective":"dg.door.w.l","name":"@s"}},{"text":","},{"score":{"objective":"dg.door.w.r","name":"@s"}},{"text":","},{"score":{"objective":"dg.door.w.u","name":"@s"}},{"text":","},{"score":{"objective":"dg.door.w.d","name":"@s"}},{"text":"]"}]
tellraw @a [{"text":" | E=["},{"score":{"objective":"dg.door.e.l","name":"@s"}},{"text":","},{"score":{"objective":"dg.door.e.r","name":"@s"}},{"text":","},{"score":{"objective":"dg.door.e.u","name":"@s"}},{"text":","},{"score":{"objective":"dg.door.e.d","name":"@s"}},{"text":"]"}]
tellraw @a [{"text":" | S=["},{"score":{"objective":"dg.door.s.l","name":"@s"}},{"text":","},{"score":{"objective":"dg.door.s.r","name":"@s"}},{"text":","},{"score":{"objective":"dg.door.s.u","name":"@s"}},{"text":","},{"score":{"objective":"dg.door.s.d","name":"@s"}},{"text":"]"}]
tellraw @p {"text":" _____________________"}