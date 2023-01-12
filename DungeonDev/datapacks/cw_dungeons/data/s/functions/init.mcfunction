scoreboard objectives add math dummy
scoreboard objectives add constant dummy
scoreboard objectives add dg dummy
scoreboard objectives add dg.id dummy
scoreboard objectives add dg.build dummy
scoreboard objectives add dg.level dummy
scoreboard objectives add dg.depth dummy
scoreboard objectives add dg.min_depth dummy
scoreboard objectives add dg.weight dummy
scoreboard objectives add dg.max dummy
scoreboard objectives add dg.placed dummy
scoreboard objectives add dg.door.n.l dummy
scoreboard objectives add dg.door.n.r dummy
scoreboard objectives add dg.door.n.u dummy
scoreboard objectives add dg.door.n.d dummy
scoreboard objectives add dg.door.w.l dummy
scoreboard objectives add dg.door.w.r dummy
scoreboard objectives add dg.door.w.u dummy
scoreboard objectives add dg.door.w.d dummy
scoreboard objectives add dg.door.e.l dummy
scoreboard objectives add dg.door.e.r dummy
scoreboard objectives add dg.door.e.u dummy
scoreboard objectives add dg.door.e.d dummy
scoreboard objectives add dg.door.s.l dummy
scoreboard objectives add dg.door.s.r dummy
scoreboard objectives add dg.door.s.u dummy
scoreboard objectives add dg.door.s.d dummy
scoreboard objectives add dg.door.zX dummy
scoreboard objectives add dg.door.zY dummy
scoreboard objectives add dg.door.zZ dummy

scoreboard players set #4 constant 4

setblock 0 -64 0 yellow_shulker_box
setblock 0 -63 0 oak_sign

scoreboard objectives add constant dummy
scoreboard players set #2 constant 2
scoreboard players set #1000 constant 1000
scoreboard players set #10000 constant 10000
scoreboard players set #lcg constant 1103515245

function s:general/rng/zprivate/init

scoreboard players set .level dg.build 0
scoreboard players set .doors_per dg.build 30
scoreboard players set .max_depth dg.build 3
scoreboard players set .seeded dg.build 1
scoreboard players set .dyna-clear dg.build 1
scoreboard players set .tunnel dg.build 0