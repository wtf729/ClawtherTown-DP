data modify storage scr_task:runtime work.row set value {"type":"minecraft:plain_message","width":420,"contents":{"text":"","color":"white","extra":[]}}
function scr_task:ui/progress
function scr_task:ui/detail_progress_text with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.dialog.body append from storage scr_task:runtime work.row
