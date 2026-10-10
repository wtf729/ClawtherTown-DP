# One accepted mail per pending grant. Do not remove the counter before send/new succeeds.
execute unless entity @s[type=minecraft:player] run return 0
execute unless score @s scr_ml_q_new matches 1.. run return 0
execute if score #busy scr_ml_lock matches 1 run return 0
data modify storage scr_mail:request mail set value {"title":"新人礼","source":"newcomer","claim_profile":"main","event_id":"","rewards":[{"handler":"item","parameters":{"stack":{"id":"minecraft:iron_sword","count":1}}},{"handler":"item","parameters":{"stack":{"id":"minecraft:iron_pickaxe","count":1}}},{"handler":"item","parameters":{"stack":{"id":"minecraft:bread","count":64}}},{"handler":"item","parameters":{"stack":{"id":"minecraft:oak_log","count":16}}},{"handler":"item","parameters":{"stack":{"id":"minecraft:torch","count":64}}},{"handler":"loot","parameters":{"table":"scr:card/card_clawther_coin_double_v"}},{"handler":"loot","parameters":{"table":"scr:card/card_soul_double_v"}}]}
execute store result score #accepted scr_ml_n run function scr_mail:send/new
data remove storage scr_mail:request mail
execute if score #accepted scr_ml_n matches 1 run scoreboard players remove @s scr_ml_q_new 1
return run scoreboard players get #accepted scr_ml_n
