$data modify storage scr_sky:ui work.route set value {view:"detail",op:"none",id:$(id),target:"",role:0,confirmed:0}
$execute if data storage scr_sky:ui request{view:"select"} run data modify storage scr_sky:ui work.route set value {view:"operate",op:"set_primary",id:$(id),target:"",role:0,confirmed:0}
$data modify storage scr_sky:ui work.name_island set value {id:$(id)}
function scr_sky:ui/island_name
$data modify storage scr_sky:ui work.label set value {text:"",color:"white",extra:[{text:""},{text:" · Lv.$(level)"}]}
data modify storage scr_sky:ui work.label.extra[0] set from storage scr_sky:ui work.island_name
$execute if data storage scr_sky:ui work.snapshot.player{primary_island_id:$(id)} run data modify storage scr_sky:ui work.label.extra append value {"text":" ","extra":[{"translate":"gui.scr.sky.primary_marker","fallback":"★ 主岛","color":"white"}]}
$execute if data storage scr_sky:ui work.snapshot.player{owned_island_id:$(id)} run data modify storage scr_sky:ui work.label.extra append value {"text":" ","extra":[{"translate":"gui.scr.sky.owned_marker","fallback":"◆ 自己的岛","color":"white"}]}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
