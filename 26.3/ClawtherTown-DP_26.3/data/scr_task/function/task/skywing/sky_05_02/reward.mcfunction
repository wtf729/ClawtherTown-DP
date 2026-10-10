# Task state + reward_pending guard this run; the Mail event is generated per successful submission.
data modify storage scr_mail:request mail set value {"title":"赤红宝藏 · 任务奖励","source":"task/skywing/sky_05_02/reward","event_id":"","claim_profile":"sky","rewards":[{"handler":"soul","parameters":{"amount":175}},{"handler":"clawther_coin","parameters":{"amount":450}},{"handler":"clawther_gem","parameters":{"amount":6}}]}
return run function scr_mail:send/new
