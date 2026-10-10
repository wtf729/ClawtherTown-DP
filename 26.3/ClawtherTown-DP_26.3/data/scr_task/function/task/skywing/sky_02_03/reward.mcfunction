# Task state + reward_pending guard this run; the Mail event is generated per successful submission.
data modify storage scr_mail:request mail set value {"title":"阴影里的晚餐 · 任务奖励","source":"task/skywing/sky_02_03/reward","event_id":"","claim_profile":"sky","rewards":[{"handler":"soul","parameters":{"amount":75}},{"handler":"clawther_coin","parameters":{"amount":230}},{"handler":"clawther_gem","parameters":{"amount":6}},{"handler":"item","parameters":{"stack":{"id":"minecraft:mycelium","count":4}}}]}
return run function scr_mail:send/new
