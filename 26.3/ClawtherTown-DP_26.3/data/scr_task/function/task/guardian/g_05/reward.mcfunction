# A new mail per successful submission. Task state + reward_pending prevent replay within this run.
data modify storage scr_mail:request mail set value {"title":"指引明路的苍蓝星 · 任务奖励","source":"task/guardian/g_05/reward","event_id":"","claim_profile":"main","rewards":[{"handler":"soul","parameters":{"amount":50}},{"handler":"clawther_coin","parameters":{"amount":150}},{"handler":"clawther_gem","parameters":{"amount":6}}]}
return run function scr_mail:send/new
