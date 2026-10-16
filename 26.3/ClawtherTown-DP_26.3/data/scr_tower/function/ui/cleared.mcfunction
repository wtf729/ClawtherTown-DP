# Keep the tower title from ui/render throughout the challenge.
function scr_tower:ui/result
data modify storage scr_tower:runtime button set value {"label":{"translate":"gui.scr.tower.next"},"width":170}
data modify storage scr_tower:runtime route set value {"op":"next","index":-1}
function scr_tower:ui/button
function scr_tower:ui/view_pending
data modify storage scr_tower:runtime button set value {"label":{"translate":"gui.scr.tower.exit","color":"green"},"width":170}
data modify storage scr_tower:runtime route set value {"op":"exit","index":-1}
function scr_tower:ui/button
