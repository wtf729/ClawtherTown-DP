data modify storage scr_tower:runtime button set value {"label":{"translate":"gui.scr.tower.view_pending"},"width":170}
data modify storage scr_tower:runtime route set value {"op":"pending","index":-1,"return_view":"run"}
function scr_tower:ui/button
