execute store result score #selected scr_tk run function scr_task:ui/navigation/detail_source
execute unless score #selected scr_tk matches 1 run return run function scr_task:ui/navigation/fallback
function scr_task:ui/state_read with storage scr_task:runtime work.ctx
# Advanced locked tasks may be inspected; no start/complete operation is exposed.
execute unless score #state scr_tk matches 1..4 unless data storage scr_task:runtime work.nav{group:"skywing",advanced:1} run return run function scr_task:ui/navigation/fallback
function scr_task:ui/name/read with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.dialog.title set from storage scr_task:ui display_name
data modify storage scr_task:runtime work.section set value {type:"minecraft:plain_message",width:420,contents:{"translate":"gui.scr.task.description_empty","fallback":"暂无任务说明!",color:"gray"}}
execute if data storage scr_task:runtime work.ctx.ui.description run data modify storage scr_task:runtime work.section.contents set from storage scr_task:runtime work.ctx.ui.description
data modify storage scr_task:runtime work.dialog.body append from storage scr_task:runtime work.section
function scr_task:ui/story
execute if score #state scr_tk matches 0 if data storage scr_task:runtime work.nav{group:"skywing",advanced:1} run function scr_task:ui/skywing/locked_detail
execute if score #state scr_tk matches 1..4 run function scr_task:ui/objectives/show
execute if score #state scr_tk matches 1..4 run function scr_task:ui/rewards/show
execute if score #state scr_tk matches 1 run function scr_task:ui/detail_start
execute if score #state scr_tk matches 3 unless data storage scr_task:runtime work{objectives_blocked:1b} run function scr_task:ui/detail_complete
function scr_task:ui/detail_navigation
