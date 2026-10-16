data modify storage scr_task:runtime work.route set from storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.route.view set value "submit_items"
data modify storage scr_task:runtime work.route.id set from storage scr_task:runtime work.ctx.id
data modify storage scr_task:runtime work.route.goal set from storage scr_task:runtime work.goal_ui.goal.id
data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.goal.action.submit",fallback:"提交",color:"yellow"}
# Allocate/register through the existing UUID session; do not append a footer button.
execute store result score #goal_token_ok scr_tk run function scr_task:ui/actions/button
execute unless score #goal_token_ok scr_tk matches 1 run return 0
data modify storage scr_task:runtime work.goal_ui.action set value {translate:"gui.scr.task.goal.action.submit",fallback:"提交",color:"yellow",underlined:1b,click_event:{action:"run_command",command:""}}
data modify storage scr_task:runtime work.goal_ui.action.click_event.command set from storage scr_task:runtime work.button.action.command
data modify storage scr_mail:preview work.line.description.contents.extra append from storage scr_task:runtime work.goal_ui.action
return 1
