execute store result score #selected scr_tk run function scr_task:core/select with storage scr_task:runtime work.nav
execute unless score #selected scr_tk matches 1 run return run function scr_task:ui/panel
execute store result score #selected scr_tk run function scr_task:ui/detail_group with storage scr_task:runtime work.nav
execute unless score #selected scr_tk matches 1 run return run function scr_task:ui/panel
# Optional starting items are retried only when no send/receipt exists for this run.
function scr_task:core/start_items/ensure
function scr_task:core/hook {hook:"refresh"}
function scr_task:core/state/read with storage scr_task:runtime work.ctx
# Advanced locked tasks may be inspected; no start/submit operation is exposed.
execute unless score #state scr_tk matches 1..4 unless data storage scr_task:runtime work.nav{group:"skywing",advanced:1} run return run function scr_task:ui/panel
execute unless data storage scr_task:runtime work.nav{advanced:1} run data modify storage scr_task:runtime work.nav.history set value 0
execute if score #state scr_tk matches 4 unless data storage scr_task:runtime work.nav{advanced:1} run data modify storage scr_task:runtime work.nav.history set value 1
function scr_task:ui/name/read with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.dialog.title set from storage scr_task:ui display_name
data modify storage scr_task:runtime work.section set value {type:"minecraft:plain_message",width:420,contents:{"translate":"gui.scr.task.description_empty","fallback":"暂无任务说明!",color:"gray"}}
execute if data storage scr_task:runtime work.ctx.ui.description run data modify storage scr_task:runtime work.section.contents set from storage scr_task:runtime work.ctx.ui.description
data modify storage scr_task:runtime work.dialog.body append from storage scr_task:runtime work.section
function scr_task:ui/story
execute if score #state scr_tk matches 0 if data storage scr_task:runtime work.nav{group:"skywing",advanced:1} run function scr_task:ui/skywing/locked_detail
execute if score #state scr_tk matches 1..2 run function scr_task:ui/detail_objectives
execute if score #state scr_tk matches 3 run data modify storage scr_task:runtime work.dialog.body append value {"type":"minecraft:plain_message","width":420,"contents":{"translate":"gui.scr.task.objectives_complete","fallback":"任务目标已完成!","color":"green"}}
execute if score #state scr_tk matches 1 run function scr_task:ui/detail_rewards
execute if score #state scr_tk matches 3 run function scr_task:ui/detail_rewards
execute if score #state scr_tk matches 4 run data modify storage scr_task:runtime work.dialog.body append value {"type":"minecraft:plain_message","width":420,"contents":{"translate":"gui.scr.task.submitted_description","fallback":"已完成 · 已提交","color":"gray"}}
execute if score #state scr_tk matches 1 run function scr_task:ui/detail_start
execute if score #state scr_tk matches 3 run function scr_task:ui/detail_submit
execute if score #state scr_tk matches 1..3 if data storage scr_task:runtime work.ctx.deliveries[0] run function scr_task:ui/delivery/show
execute if score #state scr_tk matches 2 if data storage scr_task:runtime work.ctx{id:"skywing/sky_a11"} run function scr_task:ui/skywing/professions
function scr_task:ui/detail_navigation
