data modify storage scr_tower:runtime button set value {"label":{"translate":"gui.scr.tower.previous_page"},"width":170}
data modify storage scr_tower:runtime route set value {"op":"page","index":-1,"delta":-1}
function scr_tower:ui/button
