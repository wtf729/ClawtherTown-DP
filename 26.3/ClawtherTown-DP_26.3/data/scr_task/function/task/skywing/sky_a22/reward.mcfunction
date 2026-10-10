# Task state + reward_pending guard this run; the Mail event is generated per successful submission.
data modify storage scr_mail:request mail set value {"title":"凋灵之影 · 任务奖励","source":"task/skywing/sky_a22/reward","event_id":"","claim_profile":"sky","rewards":[{"handler":"soul","parameters":{"amount":650}},{"handler":"clawther_coin","parameters":{"amount":2000}},{"handler":"clawther_gem","parameters":{"amount":35}}]}
return run function scr_mail:send/new
