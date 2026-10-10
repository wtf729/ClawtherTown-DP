execute store result score @s scr_pf_ok run function scr_profile:component/capture
execute unless score @s scr_pf_ok matches 1 run return 0
data modify storage scr_profile:runtime work.check set from storage scr_profile:runtime work.sample
execute store success score @s scr_pf_tmp run data modify storage scr_profile:runtime work.check set from storage scr_profile:runtime work.target
execute if score @s scr_pf_tmp matches 1 run return 0
return 1
