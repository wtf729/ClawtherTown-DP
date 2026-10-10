execute store result score @s scr_pf_ok run function scr_profile:component/capture
execute unless score @s scr_pf_ok matches 1 run return 0
data modify storage scr_profile:runtime work.ctx.profile set value "main"
return run function scr_profile:storage/write with storage scr_profile:runtime work.ctx
