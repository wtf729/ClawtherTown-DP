# Pre-update paid orders have no origin. Keep them payable in Main; never adopt the current Sky inventory.
execute unless score @s scr_key_pf matches 1..5 run scoreboard players set @s scr_key_pf 1
execute unless function scr:shop/policy/ready run return run function scr:shop/policy/pause_key
execute unless score @s scr_key_pf = #profile scr_shop run return run function scr:shop/policy/pause_key
tag @s remove scr.shop_key_paused
return 1
