# Native centered plain_message; vertical padding reserves room for the 80px glyph.
# Preserve the resource pack font metrics. No horizontal padding or click action.
# Add AFTER empty-list detection so the portrait cannot hide the empty-state message.
execute unless data storage scr_task:runtime work.npc.glyph run return 0
data modify storage scr_task:runtime work.portrait set value {"type":"minecraft:plain_message","width":420,"contents":{"text":"\n\n\n\n\n\n\n\n","extra":[{"text":"","font":"scr:npc_portraits","color":"white"},{"text":"\n\n"}]}}
data modify storage scr_task:runtime work.portrait.contents.extra[0].text set from storage scr_task:runtime work.npc.glyph
data modify storage scr_task:runtime work.portrait.contents.extra[0].font set from storage scr_task:runtime work.npc.font
data modify storage scr_task:runtime work.dialog.body prepend from storage scr_task:runtime work.portrait
