# Task state + reward_pending guard this run; the Mail event is generated per successful submission.
data modify storage scr_mail:request mail set value {"title":"终焉之战 · 任务奖励","source":"task/skywing/sky_06_02/reward","event_id":"","claim_profile":"sky","rewards":[{"handler":"soul","parameters":{"amount":400}},{"handler":"clawther_coin","parameters":{"amount":1000}},{"handler":"clawther_gem","parameters":{"amount":35}}]}
return run function scr_mail:send/new
