execute unless data storage scr_profile:runtime work.target.xp.levels run return 0
execute unless data storage scr_profile:runtime work.target.xp.points run return 0
execute store result score @s scr_pf_tmp run data get storage scr_profile:runtime work.target.xp.levels
execute store result score @s scr_pf_ok run function scr_profile:component/xp/needed
execute unless score @s scr_pf_ok matches 1 run return 0
execute store result score @s scr_pf_ok run data get storage scr_profile:runtime work.target.xp.points
execute unless score @s scr_pf_ok matches 0.. run return 0
execute if score @s scr_pf_ok >= @s scr_pf_tmp run return 0
return 1
