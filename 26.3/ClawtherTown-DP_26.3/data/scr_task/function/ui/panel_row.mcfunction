data modify storage scr_task:runtime work.row set value {"type":"minecraft:plain_message","width":420,"contents":{"text":"","extra":[],"click_event":{"action":"run_command","command":"/trigger task"}}}
function scr_task:ui/name/read with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.title set from storage scr_task:ui display_name
execute if score #state scr_tk matches 4 run data modify storage scr_task:runtime work.title.color set value "gray"
data modify storage scr_task:runtime work.row.contents.extra append from storage scr_task:runtime work.title
execute if score #state scr_tk matches 1 run data modify storage scr_task:runtime work.row.contents.extra append value {"text":" · ","extra":[{"translate":"gui.scr.task.state.available","fallback":"可接受"}],color:"yellow"}
execute if score #state scr_tk matches 2 run data modify storage scr_task:runtime work.row.contents.extra append value {"text":" · ","extra":[{"translate":"gui.scr.task.state.active","fallback":"进行中"}],color:"aqua"}
execute if score #state scr_tk matches 3 run data modify storage scr_task:runtime work.row.contents.extra append value {"text":" · ","extra":[{"translate":"gui.scr.task.awaiting_submission","fallback":"等待提交"}],color:"green"}
execute if score #state scr_tk matches 4 run data modify storage scr_task:runtime work.row.contents.extra append value {"text":" · ✓ ","extra":[{"translate":"gui.scr.task.state.submitted","fallback":"已提交"}],color:"gray"}
execute if score #state scr_tk matches 2 if data storage scr_task:runtime work.ctx.goal run function scr_task:ui/progress
data modify storage scr_task:runtime work.route set from storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.route.view set value "detail"
data modify storage scr_task:runtime work.route.id set from storage scr_task:runtime work.ctx.id
data modify storage scr_task:runtime work.label set from storage scr_task:runtime work.title
function scr_task:ui/button
data modify storage scr_task:runtime work.row.contents.click_event.command set from storage scr_task:runtime work.button.action.command
execute if score #state scr_tk matches 1 run data modify storage scr_task:runtime work.available append from storage scr_task:runtime work.row
execute if score #state scr_tk matches 2 run data modify storage scr_task:runtime work.active append from storage scr_task:runtime work.row
execute if score #state scr_tk matches 3 run data modify storage scr_task:runtime work.completed append from storage scr_task:runtime work.row
execute if score #state scr_tk matches 4 run data modify storage scr_task:runtime work.history append from storage scr_task:runtime work.row
