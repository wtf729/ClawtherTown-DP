# execute as PLAYER at @s run function scr_tower:admin/debug {floor:28,hazards:4,danger:1}
# Starts a TEST run only when no active run exists. Test runs never mail rewards or debit wallet.
execute store result score #ok scr_tw run function scr_tower:context/open
execute unless score #ok scr_tw matches 1 run return 0
execute unless data storage scr_tower:runtime p.run{phase:"idle"} unless data storage scr_tower:runtime p.run{phase:"settled"} unless data storage scr_tower:runtime p.run{phase:"abandoned"} run return 0
$scoreboard players set #debug_floor scr_tw $(floor)
$scoreboard players set #debug_hazards scr_tw $(hazards)
$scoreboard players set #debug_danger scr_tw $(danger)
execute unless score #debug_floor scr_tw matches 1..60 run return 0
execute unless score #debug_hazards scr_tw matches 0..100 run return 0
execute unless score #debug_danger scr_tw matches -1..3 run return 0
execute store result score #ok scr_tw run function scr_tower:profile
execute unless score #ok scr_tw matches 1 run return 0
function scr_tower:archive with storage scr_tower:runtime p.run
data modify storage scr_tower:runtime p.run set value {phase:"building",id:0,debug:1,tower:"main",floor:1,completed:0,hazards:0,waiver:1,paid:0,gems:0,pending:[],cards:[],settlement:"none",cost:0}
data modify storage scr_tower:runtime p.run.tower set from storage scr_tower:runtime group
data modify storage scr_tower:runtime p.run.id set from storage scr_tower:runtime p.next_run
execute store result score #run scr_tw run data get storage scr_tower:runtime p.next_run
execute unless score #run scr_tw matches 1..2000000000 run return 0
execute store result storage scr_tower:runtime p.next_run int 1 run scoreboard players add #run scr_tw 1
execute store result storage scr_tower:runtime p.run.floor int 1 run scoreboard players get #debug_floor scr_tw
execute store result storage scr_tower:runtime p.run.hazards int 1 run scoreboard players get #debug_hazards scr_tw
function scr_tower:generate
# Forced hazard respects absolute safe floors.
scoreboard players operation #rem scr_tw = #debug_floor scr_tw
scoreboard players operation #rem scr_tw %= #five scr_tw
execute if score #debug_floor scr_tw matches 2.. unless score #rem scr_tw matches 0 run function scr_tower:admin/force
function scr_tower:save
function scr_tower:ui/open_run
