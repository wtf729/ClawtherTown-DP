execute if data storage scr_tower:runtime p.run{phase:"safe"} run function scr_tower:ui/safe_notice
data modify storage scr_tower:runtime card_ui set value {index:0,number:1}
function scr_tower:ui/card with storage scr_tower:runtime card_ui
data modify storage scr_tower:runtime card_ui set value {index:1,number:2}
function scr_tower:ui/card with storage scr_tower:runtime card_ui
data modify storage scr_tower:runtime card_ui set value {index:2,number:3}
function scr_tower:ui/card with storage scr_tower:runtime card_ui
data modify storage scr_tower:runtime card_ui set value {index:3,number:4}
function scr_tower:ui/card with storage scr_tower:runtime card_ui
function scr_tower:ui/view_pending
data modify storage scr_tower:runtime button set value {"label":{"translate":"gui.scr.tower.exit","color":"green"},"width":170}
data modify storage scr_tower:runtime route set value {"op":"exit","index":-1}
function scr_tower:ui/button
