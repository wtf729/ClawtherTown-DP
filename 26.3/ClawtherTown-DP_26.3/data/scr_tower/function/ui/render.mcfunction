function scr_tower:ui/nav/read with storage scr_tower:runtime ctx
function scr_tower:ui/reset with storage scr_tower:runtime ctx
execute store result score #allowed scr_tw run function scr_tower:profile
data modify storage scr_tower:runtime title set value {translate:"gui.scr.tower.title"}
execute unless data storage scr_tower:runtime nav{view:"home"} if data storage scr_tower:runtime p.run{tower:"main"} run data modify storage scr_tower:runtime title set value {translate:"gui.scr.tower.main"}
execute unless data storage scr_tower:runtime nav{view:"home"} if data storage scr_tower:runtime p.run{tower:"sky"} run data modify storage scr_tower:runtime title set value {translate:"gui.scr.tower.sky"}
data modify storage scr_tower:runtime dialog set value {type:"minecraft:multi_action",title:{text:""},body:[],actions:[],columns:2,pause:false,can_close_with_escape:true,after_action:"none"}
data modify storage scr_tower:runtime dialog.title set from storage scr_tower:runtime title
scoreboard players set #wallet scr_tw 0
execute store result score #wallet scr_tw run scoreboard players get @s clawther_gem
execute store result storage scr_tower:runtime wallet int 1 run scoreboard players get #wallet scr_tw
function scr_tower:ui/page
function scr_tower:ui/exit
function scr_tower:ui/nav/write with storage scr_tower:runtime ctx
return run function scr_tower:ui/show with storage scr_tower:runtime
