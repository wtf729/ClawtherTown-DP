data remove storage scr_task:runtime work.dialogue
execute if score #state scr_tk matches 1..2 if data storage scr_task:runtime work.ctx.ui.accept run data modify storage scr_task:runtime work.dialogue set from storage scr_task:runtime work.ctx.ui.accept
execute if score #state scr_tk matches 3..4 if data storage scr_task:runtime work.ctx.ui.submit run data modify storage scr_task:runtime work.dialogue set from storage scr_task:runtime work.ctx.ui.submit
execute unless data storage scr_task:runtime work.dialogue run return 0
# Style only the displayed NPC speech, leaving task metadata and introduction unchanged.
data modify storage scr_task:runtime work.dialogue.italic set value 1b
data modify storage scr_task:runtime work.section set value {type:"minecraft:plain_message",width:420,contents:{text:""}}
data modify storage scr_task:runtime work.section.contents set from storage scr_task:runtime work.dialogue
data modify storage scr_task:runtime work.dialog.body append from storage scr_task:runtime work.section
