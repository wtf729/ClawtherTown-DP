execute if score #sky_ui_seq scr_sk matches 2147483647 run return 0
function scr_sky:ui/navigation/inherit
data modify storage scr_sky:ui work.button set value {label:{text:""},width:180}
data modify storage scr_sky:ui work.button.label set from storage scr_sky:ui work.label
execute store result storage scr_sky:ui work.route.token int 1 run scoreboard players add #sky_ui_seq scr_sk 1
function scr_sky:ui/session_add with storage scr_sky:ui work.ctx
function scr_sky:ui/button_command with storage scr_sky:ui work.route
# Shared template keeps the real dialog open until the server replaces or clears it.
