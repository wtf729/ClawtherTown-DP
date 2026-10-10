execute unless data storage scr_profile:runtime work.target.gamemode run return 0
execute store result score @s scr_pf_tmp run data get storage scr_profile:runtime work.target.gamemode
execute unless score @s scr_pf_tmp matches 0..3 run return 0
return 1
