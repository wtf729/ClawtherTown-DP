execute store result storage scr_profile:runtime work.sample.xp.levels int 1 run experience query @s levels
execute store result score @s scr_pf_tmp run experience query @s levels
execute store result score @s scr_pf_ok run function scr_profile:component/xp/needed
execute unless score @s scr_pf_ok matches 1 run return 0
data modify storage scr_profile:runtime work.xp_measure.progress set from entity @s XpP
execute store result storage scr_profile:runtime work.xp_measure.needed int 1 run scoreboard players get @s scr_pf_tmp
# Round the float progress to the nearest whole XP point; /experience query floors float error.
execute store success score @s scr_pf_tmp store result storage scr_profile:runtime work.sample.xp.points int 1 run compute default float scr_profile:xp/points
execute unless score @s scr_pf_tmp matches 1 run return 0
return 1
