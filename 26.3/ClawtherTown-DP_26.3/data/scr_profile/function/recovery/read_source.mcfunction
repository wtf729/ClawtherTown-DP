execute if score @s scr_pf_target matches 1 run data modify storage scr_profile:runtime work.ctx.profile set value "main"
execute if score @s scr_pf_target matches 2 run data modify storage scr_profile:runtime work.ctx.profile set value "building"
execute if score @s scr_pf_target matches 3 run data modify storage scr_profile:runtime work.ctx.profile set value "memory"
execute if score @s scr_pf_target matches 4 run data modify storage scr_profile:runtime work.ctx.profile set value "star"
return run function scr_profile:storage/read with storage scr_profile:runtime work.ctx
