execute unless data storage scr_tower:runtime p.run{phase:"idle"} unless data storage scr_tower:runtime p.run{phase:"settled"} unless data storage scr_tower:runtime p.run{phase:"abandoned"} run return 0
execute store result score #ok scr_tw run function scr_tower:profile
execute unless score #ok scr_tw matches 1 run return 0
execute unless data storage scr_tower:runtime route{tower:"main"} unless data storage scr_tower:runtime route{tower:"sky"} run return 0
execute store result score #ok scr_tw run function scr_tower:clock/quota
execute unless score #ok scr_tw matches 1 run return 0
execute store result score #pday scr_tw run data get storage scr_tower:runtime p.day
execute if score #pday scr_tw > #day scr_tw run return 0
execute if score #pday scr_tw < #day scr_tw run data modify storage scr_tower:runtime p.entries set value 0
execute store result score #entries scr_tw run data get storage scr_tower:runtime p.entries
execute unless score #entries scr_tw matches 0..1 run return 0
execute store result score #run scr_tw run data get storage scr_tower:runtime p.next_run
execute unless score #run scr_tw matches 1..2000000000 run return 0
function scr_tower:archive with storage scr_tower:runtime p.run
data modify storage scr_tower:runtime p.run set value {phase:"building",id:0,tower:"main",floor:1,completed:0,hazards:0,waiver:1,paid:0,gems:0,pending:[],cards:[],settlement:"none",cost:0}
data modify storage scr_tower:runtime p.run.tower set from storage scr_tower:runtime route.tower
execute store result storage scr_tower:runtime p.run.id int 1 run scoreboard players get #run scr_tw
execute store result storage scr_tower:runtime p.next_run int 1 run scoreboard players add #run scr_tw 1
execute store result storage scr_tower:runtime p.entries int 1 run scoreboard players add #entries scr_tw 1
execute store result storage scr_tower:runtime p.day int 1 run scoreboard players get #day scr_tw
execute store result score #ok scr_tw run function scr_tower:save
execute unless score #ok scr_tw matches 1 run return 0
return run function scr_tower:generate
