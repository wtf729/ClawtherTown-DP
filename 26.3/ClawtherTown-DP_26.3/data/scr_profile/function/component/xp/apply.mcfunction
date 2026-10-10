$execute store success score @s scr_pf_tmp run experience set @s $(levels) levels
execute unless score @s scr_pf_tmp matches 1 run return 0
$execute store success score @s scr_pf_tmp run experience set @s $(points) points
execute unless score @s scr_pf_tmp matches 1 run return 0
return 1
