# A locked/recovery detail returns to the same source as an active detail.
data modify storage scr_sky:ui work.route set value {view:"home",op:"none",id:0,target:"",role:0,confirmed:0}
execute if data storage scr_sky:ui request.return_to{view:"list"} run data modify storage scr_sky:ui work.route.view set value "list"
data modify storage scr_sky:ui work.label set value {translate:"gui.scr.sky.back",fallback:"返回",color:"white"}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
