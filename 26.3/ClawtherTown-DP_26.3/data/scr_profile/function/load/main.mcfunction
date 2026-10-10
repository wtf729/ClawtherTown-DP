data modify storage scr_profile:runtime work.ctx.profile set value "main"
return run function scr_profile:initialize/profile/main with storage scr_profile:runtime work.ctx
