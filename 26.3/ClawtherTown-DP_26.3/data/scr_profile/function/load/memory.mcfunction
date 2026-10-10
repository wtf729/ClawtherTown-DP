data modify storage scr_profile:runtime work.ctx.profile set value "memory"
return run function scr_profile:initialize/profile/memory with storage scr_profile:runtime work.ctx
