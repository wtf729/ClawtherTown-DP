# A component tree, not whitespace-based alignment. Each optional suffix owns its separator.
data modify storage scr_task:runtime work.label set value {text:"",extra:[]}
$data modify storage scr_task:runtime work.label.extra append from storage scr_task:runtime npc_catalog[{group:"$(group)"}].title
$execute if data storage scr_task:runtime work.home_flags.$(group).active run data modify storage scr_task:runtime work.label.extra append value {text:" ",extra:[{translate:"gui.scr.task.status.active",fallback:"?",color:"gray"}]}
$execute if data storage scr_task:runtime work.home_flags.$(group).available run data modify storage scr_task:runtime work.label.extra append value {text:" ",extra:[{translate:"gui.scr.task.status.available",fallback:"!",color:"yellow"}]}
$execute if data storage scr_task:runtime work.home_flags.$(group).completed run data modify storage scr_task:runtime work.label.extra append value {text:" ",extra:[{translate:"gui.scr.task.status.completed",fallback:"✓",color:"aqua"}]}
$data modify storage scr_task:runtime work.route set value {view:"panel",group:"$(group)",history:0}
function scr_task:ui/button
data modify storage scr_task:runtime work.button.width set value 100
data modify storage scr_task:runtime work.dialog.actions append from storage scr_task:runtime work.button

# Reuse the native button route for this NPC portrait; no separate navigation token.
data modify storage scr_task:runtime work.home_portrait set value {text:"",font:"scr:npc_portraits",color:"white",underlined:false,click_event:{action:"run_command",command:""}}
$data modify storage scr_task:runtime work.home_portrait.text set from storage scr_task:runtime npc_catalog[{group:"$(group)"}].glyph
data modify storage scr_task:runtime work.home_portrait.click_event.command set from storage scr_task:runtime work.button.action.command
$execute if data storage scr_task:runtime work.dialog.body[$(row)].contents.extra[0] run data modify storage scr_task:runtime work.dialog.body[$(row)].contents.extra append value {text:"  "}
$data modify storage scr_task:runtime work.dialog.body[$(row)].contents.extra append from storage scr_task:runtime work.home_portrait
