# First initialization is a separate path and always ends this invocation.
execute unless entity @s[tag=scr_profile.bound] run function scr_profile:initialize/unbound
execute unless score @s scr_pf_init matches 1 run return run function scr_profile:initialize/start
execute if score @s scr_pf_lock matches 1 run return 0
execute if entity @s[nbt={Health:0.0f}] run return 0
execute unless score @s scr_pf_cur matches 1..5 run return run function scr_profile:switch/fault
function scr_profile:router/resolve
execute unless score @s scr_pf_cur = @s scr_pf_target run function scr_profile:switch/start
