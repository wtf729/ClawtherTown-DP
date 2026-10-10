$execute unless data storage scr_sky:ui work.island.roles."$(target)" run return 0
scoreboard players add #shown_members scr_sk 1
function scr_sky:ui/name with storage scr_sky:ui work.ctx
data modify storage scr_sky:ui work.label set from storage scr_sky:ui work.name
data modify storage scr_sky:ui work.route set value {view:"member",op:"none",id:0,target:"",role:0,confirmed:0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
$data modify storage scr_sky:ui work.route.target set value "$(target)"
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
