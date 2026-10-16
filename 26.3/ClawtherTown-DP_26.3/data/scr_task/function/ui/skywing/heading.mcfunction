execute if data storage scr_task:runtime work.nav{chapter:0} run data modify storage scr_task:runtime work.dialog.title set value {translate:"gui.scr.task.sky.prologue",fallback:"序章 · 云端来客",color:"white"}
execute if data storage scr_task:runtime work.nav{chapter:0} run return 1
data remove storage scr_task:runtime work.chapter_ui
$data modify storage scr_task:runtime work.chapter_ui set from storage scr_task:runtime chapter_catalog[{index:$(chapter)}]
execute unless data storage scr_task:runtime work.chapter_ui run return 0
data modify storage scr_task:runtime work.chapter_ui.key set from storage scr_task:runtime work.key
function scr_task:core/chapter/read with storage scr_task:runtime work.chapter_ui
data modify storage scr_task:runtime work.chapter_ui.completed_count set from storage scr_task:runtime work.chapter_status.completed_count
data modify storage scr_task:runtime work.dialog.title set from storage scr_task:runtime work.chapter_ui.label
data modify storage scr_task:runtime work.label set value {text:"",extra:[]}
data modify storage scr_task:runtime work.label.extra append from storage scr_task:runtime work.chapter_ui.label
function scr_task:ui/skywing/chapter_summary with storage scr_task:runtime work.chapter_ui
# Use the same persisted unlock flag and completion status as chapter navigation.
execute if data storage scr_task:runtime work.chapter_status{unlocked:1b} run function scr_task:ui/skywing/chapter_hint with storage scr_task:runtime work.chapter_ui
data modify storage scr_task:runtime work.section set value {type:"minecraft:plain_message",width:420,contents:{text:""}}
data modify storage scr_task:runtime work.section.contents set from storage scr_task:runtime work.label
data modify storage scr_task:runtime work.dialog.body prepend from storage scr_task:runtime work.section
