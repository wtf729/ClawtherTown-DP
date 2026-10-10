# Read current persistent states only when opening/returning to the home page.
# Six native NPC actions; close stays in exit_action. /trigger task also refreshes.
data modify storage scr_task:runtime work.dialog set from storage scr_task:runtime home_template
data modify storage scr_task:runtime work.dialog.body set value [{"type":"minecraft:plain_message","width":310,"contents":{"text":"\n\n\n\n\n\n","extra":[]}},{"type":"minecraft:plain_message","width":310,"contents":{"text":"\n\n\n\n\n","extra":[]}}]
data modify storage scr_task:runtime work.home_flags set value {guardian:{},courier:{},herald:{},timekeeper:{},broker:{},skywing:{}}
data modify storage scr_task:runtime work.home_queue set from storage scr_task:runtime catalog
execute if data storage scr_task:runtime work.home_queue[0] run function scr_task:ui/home_scan
data modify storage scr_task:runtime work.ctx.key set from storage scr_task:runtime work.key
function scr_task:ui/home_button {group:"guardian",row:0}
function scr_task:ui/home_button {group:"courier",row:0}
function scr_task:ui/home_button {group:"herald",row:0}
function scr_task:ui/home_button {group:"timekeeper",row:1}
function scr_task:ui/home_button {group:"broker",row:1}
function scr_task:ui/home_button {group:"skywing",row:1}
data modify storage scr_task:runtime work.dialog.body[0].contents.extra append value {text:"\n\n"}
data modify storage scr_task:runtime work.dialog.body[1].contents.extra append value {text:"\n\n"}
function scr_task:ui/close_button
