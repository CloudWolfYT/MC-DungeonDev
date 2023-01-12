#say tunnel

execute if entity @s[tag=dg.door.n] run summon marker ~ ~ ~ {Tags:["dg.tunnel.n","dg.tunnel"]}
execute if entity @s[tag=dg.door.s] run summon marker ~ ~ ~ {Tags:["dg.tunnel.s","dg.tunnel"]}
execute if entity @s[tag=dg.door.e] run summon marker ~ ~ ~ {Tags:["dg.tunnel.e","dg.tunnel"]}
execute if entity @s[tag=dg.door.w] run summon marker ~ ~ ~ {Tags:["dg.tunnel.w","dg.tunnel"]}