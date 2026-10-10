# Task state + reward_pending guard this run; the Mail event is generated per successful submission.
data modify storage scr_mail:request mail set value {"title":"星辰之门 · 任务奖励","source":"task/skywing/sky_06_01/reward","event_id":"","claim_profile":"sky","rewards":[{"handler":"soul","parameters":{"amount":250}},{"handler":"clawther_coin","parameters":{"amount":650}},{"handler":"clawther_gem","parameters":{"amount":10}}]}
return run function scr_mail:send/new
