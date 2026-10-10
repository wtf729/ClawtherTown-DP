# One accepted mail per pending grant. Do not remove the counter before send/new succeeds.
execute unless entity @s[type=minecraft:player] run return 0
execute unless score @s scr_ml_q_birth matches 1.. run return 0
execute if score #busy scr_ml_lock matches 1 run return 0
data modify storage scr_mail:request mail set value {"title":"生日礼物","source":"birthday","claim_profile":"main","event_id":"","rewards":[{"handler":"loot","parameters":{"table":"scr:case/case/case_special_item_ii"}},{"handler":"loot","parameters":{"table":"scr:case/case/case_special_item_ii"}},{"handler":"loot","parameters":{"table":"scr:case/case/case_special_item_ii"}},{"handler":"loot","parameters":{"table":"scr:tools/staff/staff_clear_spring_custom_1"}}]}
execute store result score #accepted scr_ml_n run function scr_mail:send/new
data remove storage scr_mail:request mail
execute if score #accepted scr_ml_n matches 1 run scoreboard players remove @s scr_ml_q_birth 1
return run scoreboard players get #accepted scr_ml_n
