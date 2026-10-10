execute if score @s time_daily_sign_in matches 1 if score @s time_day_sign_in = #server time_day_sign_in run function scr_task:event/formal_progress {"id":"timekeeper/t_02","field":"sign_in"}
return 1
