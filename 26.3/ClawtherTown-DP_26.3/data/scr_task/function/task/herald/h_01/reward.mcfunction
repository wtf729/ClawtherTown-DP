# A new mail per successful submission. Task state + reward_pending prevent replay within this run.
data modify storage scr_mail:request mail set value {"title":"鹰眼识珍 · 任务奖励","source":"task/herald/h_01/reward","event_id":"","claim_profile":"main","rewards":[{"handler":"soul","parameters":{"amount":50}},{"handler":"clawther_coin","parameters":{"amount":50}},{"handler":"clawther_gem","parameters":{"amount":3}}]}
return run function scr_mail:send/new
