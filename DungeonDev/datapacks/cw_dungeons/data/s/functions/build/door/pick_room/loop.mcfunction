scoreboard players operation out dg -= @e[type=marker,tag=dg.valid,limit=1] dg.weight

execute if score out dg matches ..0 run tag @e[type=marker,tag=dg.valid,limit=1] add dg.choice

tag @e[type=marker,tag=dg.valid,limit=1] remove dg.valid

# recurse till first valid is the choice.
execute if score out dg matches 1.. run function s:build/door/pick_room/loop