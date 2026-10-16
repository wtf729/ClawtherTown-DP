# Read the actual successor's previous_required; no successor means no unlock hint.
data remove storage scr_task:runtime work.chapter_hint
$data modify storage scr_task:runtime work.chapter_hint set from storage scr_task:runtime chapter_catalog[{line:"$(line)",previous:"$(name)"}]
scoreboard players set #ui_ch_remaining scr_tk 0
execute if data storage scr_task:runtime work.chapter_hint.previous_required store result score #ui_ch_remaining scr_tk run data get storage scr_task:runtime work.chapter_hint.previous_required
execute if data storage scr_task:runtime work.chapter_hint.previous_required run scoreboard players operation #ui_ch_remaining scr_tk -= #ui_ch_completed scr_tk
execute if score #ui_ch_remaining scr_tk matches 1.. store result storage scr_task:runtime work.chapter_hint.remaining int 1 run scoreboard players get #ui_ch_remaining scr_tk
execute if score #ui_ch_remaining scr_tk matches 1.. run function scr_task:ui/skywing/chapter_hint_text with storage scr_task:runtime work.chapter_hint
data remove storage scr_task:runtime work.chapter_hint
scoreboard players reset #ui_ch_remaining scr_tk
