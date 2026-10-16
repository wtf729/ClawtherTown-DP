# Final Task reward only. Preserve the existing reward_pending and Mail event boundary.
execute if score #busy scr_ml_lock matches 1 run return 0
data remove storage scr_mail:request mail
$data modify storage scr_mail:request mail set from storage scr_mail:definitions task_rewards."$(id)"
execute unless data storage scr_mail:request mail.title run return 0
execute unless data storage scr_mail:request mail.source run return 0
execute unless data storage scr_mail:request mail.event_id run return 0
execute unless data storage scr_mail:request mail.claim_profile run return 0
execute unless data storage scr_mail:request mail.rewards[0] run return 0
return run function scr_mail:send/new
