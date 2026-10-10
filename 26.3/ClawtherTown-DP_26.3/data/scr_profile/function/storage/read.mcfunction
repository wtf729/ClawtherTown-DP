data remove storage scr_profile:runtime work.target
$data modify storage scr_profile:runtime work.target set from storage scr_profile:players players."$(key)".profiles.$(profile)
execute unless data storage scr_profile:runtime work.target{initialized:1b,schema:1} run return 0
return 1
