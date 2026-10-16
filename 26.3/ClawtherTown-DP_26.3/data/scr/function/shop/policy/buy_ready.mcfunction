# Pre-update paid orders have no origin. Keep them payable in Main; never adopt the current Sky inventory.
execute unless score @s scr_buy_pf matches 1..5 run scoreboard players set @s scr_buy_pf 1
execute unless function scr:shop/policy/ready run return run function scr:shop/policy/pause_buy
execute unless score @s scr_buy_pf = #profile scr_shop run return run function scr:shop/policy/pause_buy
tag @s remove scr.shop_buy_paused
return 1
