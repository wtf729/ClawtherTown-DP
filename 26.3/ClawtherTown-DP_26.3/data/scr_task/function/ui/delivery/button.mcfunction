function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
data modify storage scr_task:runtime work.button.label set value {"translate":"gui.scr.task.delivery.unavailable","fallback":"备齐材料后交付","color":"gray"}
execute if data storage scr_task:runtime work.record.delivery_lock run data modify storage scr_task:runtime work.button.label set value {"translate":"gui.scr.task.delivery.locked","fallback":"等待管理员核查","color":"red"}
scoreboard players set #ui_ready scr_tk 0
execute store result score #delivery_profile scr_tk run function scr_task:core/delivery/profile_ready with storage scr_task:runtime work.ctx.delivery_policy
execute if score #delivery_profile scr_tk matches 1 unless data storage scr_task:runtime work.record.delivery_lock if function scr_task:core/delivery/preflight run scoreboard players set #ui_ready scr_tk 1
execute unless score #ui_ready scr_tk matches 1 run data modify storage scr_task:runtime work.dialog.actions append from storage scr_task:runtime work.button
execute unless score #ui_ready scr_tk matches 1 run return 0
data modify storage scr_task:runtime work.route set from storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.route.view set value "deliver"
data modify storage scr_task:runtime work.route.id set from storage scr_task:runtime work.ctx.id
data modify storage scr_task:runtime work.route.goal set from storage scr_task:runtime work.delivery.id
data modify storage scr_task:runtime work.label set value {text:"",extra:[]}
data modify storage scr_task:runtime work.label.extra append value {"translate":"gui.scr.task.delivery.deliver","fallback":"交付 · ","color":"yellow"}
data modify storage scr_task:runtime work.label.extra append from storage scr_task:runtime work.delivery.label
function scr_task:ui/push_button
