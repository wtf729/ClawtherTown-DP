execute unless score @s scr_sell_pf matches 1..5 run scoreboard players set @s scr_sell_pf 1
execute unless function scr:shop/policy/ready run return 0
execute unless score @s scr_sell_pf = #profile scr_shop run return 0
return 1
