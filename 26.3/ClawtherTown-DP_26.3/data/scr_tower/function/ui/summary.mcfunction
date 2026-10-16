data modify storage scr_tower:runtime nav.view set value "summary"
data modify storage scr_tower:runtime nav.page set value 0
data modify storage scr_tower:runtime dialog.body append value {type:"minecraft:plain_message",contents:{translate:"gui.scr.tower.exploration_ended"},width:380}
data modify storage scr_tower:runtime text_args set value {"p_run_floor":0,"p_run_completed":0}
data modify storage scr_tower:runtime text_args.p_run_floor set from storage scr_tower:runtime p.run.floor
data modify storage scr_tower:runtime text_args.p_run_completed set from storage scr_tower:runtime p.run.completed
function scr_tower:ui/text/summary with storage scr_tower:runtime text_args
execute if data storage scr_tower:runtime p.run{phase:"settled"} run function scr_tower:ui/mailed
execute if data storage scr_tower:runtime p.run{phase:"abandoned"} run function scr_tower:ui/forfeited
execute if data storage scr_tower:runtime p.run{phase:"settled"} run function scr_tower:ui/summary_last
execute if data storage scr_tower:runtime p.run{phase:"settled"} run function scr_tower:ui/summary_rewards
data modify storage scr_tower:runtime button set value {"label":{"translate":"gui.scr.tower.return_home"},"width":170}
data modify storage scr_tower:runtime route set value {"op":"home","index":-1}
function scr_tower:ui/button
