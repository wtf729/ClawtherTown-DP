# Cancellation is navigation only. A member operation returns to the selected member.
data modify storage scr_sky:ui work.route set value {view:"detail",op:"none",id:0,target:"",role:0,confirmed:0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
execute if data storage scr_sky:ui request{op:"kick"} run data modify storage scr_sky:ui work.route.view set value "member"
execute if data storage scr_sky:ui request{op:"transfer"} run data modify storage scr_sky:ui work.route.view set value "member"
execute if data storage scr_sky:ui work.route{view:"member"} run data modify storage scr_sky:ui work.route.target set from storage scr_sky:ui request.target
data modify storage scr_sky:ui work.label set value {translate:"gui.scr.sky.back",fallback:"返回",color:"white"}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
