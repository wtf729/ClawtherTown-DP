$execute if data storage scr_mail:runtime work.mail{source:"task/$(id)/reward"} run scoreboard players set #task_title_found scr_ml_n 1
$execute if data storage scr_mail:runtime work.mail{event_id:"task/$(id)/reward"} run scoreboard players set #task_title_found scr_ml_n 1
# Original catalog.title retains the old developer-prefixed title for exact legacy matching.
$execute if score #legacy_code_title scr_ml_n matches 1 if data storage scr_mail:runtime work.mail{title:"$(title) · 任务奖励"} run scoreboard players set #task_title_found scr_ml_n 1
$execute if score #legacy_code_title scr_ml_n matches 1 if data storage scr_mail:runtime work.mail{title:"任务奖励：$(title)"} run scoreboard players set #task_title_found scr_ml_n 1
$execute if score #legacy_code_title scr_ml_n matches 1 if data storage scr_mail:runtime work.mail{title:"Task Reward: $(title)"} run scoreboard players set #task_title_found scr_ml_n 1
$execute if score #legacy_code_title scr_ml_n matches 1 if data storage scr_mail:runtime work.mail{title:"$(title)"} run scoreboard players set #task_title_found scr_ml_n 1
execute unless score #task_title_found scr_ml_n matches 1 run return 0
function scr_task:ui/name/read with storage scr_mail:runtime work.task_title_entry
data modify storage scr_mail:runtime work.title_label set value {translate:"gui.scr.mail.task_reward",fallback:"%s · 任务奖励",with:[{}],color:"gold"}
data modify storage scr_mail:runtime work.title_label.with[0] set from storage scr_task:ui display_name
# The outer label controls claimed/history gray styling.
data remove storage scr_mail:runtime work.title_label.with[0].color
return 1
