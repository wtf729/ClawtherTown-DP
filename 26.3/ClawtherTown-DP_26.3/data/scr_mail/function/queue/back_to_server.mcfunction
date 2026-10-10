# One accepted mail per pending grant. Do not remove the counter before send/new succeeds.
execute unless entity @s[type=minecraft:player] run return 0
execute unless score @s scr_ml_q_return matches 1.. run return 0
execute if score #busy scr_ml_lock matches 1 run return 0
data modify storage scr_mail:request mail set value {"title":"回归奖励","source":"back_to_server","claim_profile":"main","event_id":"","rewards":[{"handler":"loot","parameters":{"table":"scr:card/card_clawther_coin_double_iii"}},{"handler":"loot","parameters":{"table":"scr:card/card_soul_double_iii"}}]}
execute store result score #accepted scr_ml_n run function scr_mail:send/new
data remove storage scr_mail:request mail
execute if score #accepted scr_ml_n matches 1 run scoreboard players remove @s scr_ml_q_return 1
return run scoreboard players get #accepted scr_ml_n
