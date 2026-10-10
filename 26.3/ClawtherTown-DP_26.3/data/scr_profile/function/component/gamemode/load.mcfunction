execute store result score @s scr_pf_tmp run data get storage scr_profile:runtime work.target.gamemode
execute if score @s scr_pf_tmp matches 0 unless entity @s[gamemode=survival] run gamemode survival @s
execute if score @s scr_pf_tmp matches 1 unless entity @s[gamemode=creative] run gamemode creative @s
execute if score @s scr_pf_tmp matches 2 unless entity @s[gamemode=adventure] run gamemode adventure @s
execute if score @s scr_pf_tmp matches 3 unless entity @s[gamemode=spectator] run gamemode spectator @s
return 1
