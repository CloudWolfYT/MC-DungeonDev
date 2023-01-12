# show/hide names of markers
execute as @e[type=marker,tag=dg,tag=!dg.display] at @s if entity @a[gamemode=creative,distance=..5] run function s:editor/show
execute as @e[type=marker,tag=dg,tag=dg.display] at @s unless entity @a[gamemode=creative,distance=..5] run function s:editor/hide

# detect when to calculate a room's door dimensions
execute as @e[type=marker,tag=dg.room] at @s if block ~ ~ ~ comparator[mode=subtract] run function s:editor/door_menu/start