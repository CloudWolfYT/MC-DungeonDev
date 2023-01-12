tag @s add dg.display
summon armor_stand ~ ~ ~ {Tags:["dg","dg.display","new"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b}
data modify entity @e[type=armor_stand,tag=new,limit=1] CustomName set from entity @s data.CustomName
tag @e remove new