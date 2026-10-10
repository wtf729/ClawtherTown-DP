# Task state + reward_pending guard this run; the Mail event is generated per successful submission.
data modify storage scr_mail:request mail set value {"title":"紫色的访客 · 任务奖励","source":"task/skywing/sky_04_01/reward","event_id":"","claim_profile":"sky","rewards":[{"handler":"soul","parameters":{"amount":125}},{"handler":"clawther_coin","parameters":{"amount":330}},{"handler":"clawther_gem","parameters":{"amount":6}},{"handler":"item","parameters":{"stack":{"id":"minecraft:diamond","count":2}}}]}
return run function scr_mail:send/new
