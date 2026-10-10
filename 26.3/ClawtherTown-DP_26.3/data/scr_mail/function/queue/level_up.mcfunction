# One accepted mail per pending grant. Do not remove the counter before send/new succeeds.
execute unless entity @s[type=minecraft:player] run return 0
execute unless score @s scr_ml_q_level matches 1.. run return 0
execute if score #busy scr_ml_lock matches 1 run return 0
data modify storage scr_mail:request mail set value {"title":"升级奖励","source":"level_up","claim_profile":"main","event_id":"","rewards":[{"handler":"loot","parameters":{"table":"scr:case/case/case_rare_ore"}}]}
execute store result score #accepted scr_ml_n run function scr_mail:send/new
data remove storage scr_mail:request mail
execute if score #accepted scr_ml_n matches 1 run scoreboard players remove @s scr_ml_q_level 1
return run scoreboard players get #accepted scr_ml_n
