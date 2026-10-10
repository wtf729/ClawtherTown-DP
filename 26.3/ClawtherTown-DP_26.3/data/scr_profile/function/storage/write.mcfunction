data modify storage scr_profile:runtime work.step set value "write_snapshot"
$data modify storage scr_profile:players players."$(key)".profiles.$(profile) set from storage scr_profile:runtime work.sample
data remove storage scr_profile:runtime work.check
$data modify storage scr_profile:runtime work.check set from storage scr_profile:players players."$(key)".profiles.$(profile)
execute unless data storage scr_profile:runtime work.check{initialized:1b,schema:1} run return 0
execute store success score @s scr_pf_tmp run data modify storage scr_profile:runtime work.check set from storage scr_profile:runtime work.sample
execute if score @s scr_pf_tmp matches 1 run return 0
return 1
