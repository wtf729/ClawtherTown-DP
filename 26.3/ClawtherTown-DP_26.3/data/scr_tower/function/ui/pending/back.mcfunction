data modify storage scr_tower:runtime button set value {"label":{"translate":"gui.scr.tower.return_challenge"},"width":170}
data modify storage scr_tower:runtime route set value {"op":"pending_back","index":-1}
function scr_tower:ui/button
execute if data storage scr_tower:runtime nav{return_view:"summary"} run data modify storage scr_tower:runtime dialog.actions[-1].label set value {translate:"gui.scr.tower.return_summary"}
