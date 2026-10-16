data modify storage scr_task:runtime work.goal_ui.level_queue set value []
$data modify storage scr_task:runtime work.goal_ui.level_queue set from storage scr_sky:players players."$(key)".memberships
