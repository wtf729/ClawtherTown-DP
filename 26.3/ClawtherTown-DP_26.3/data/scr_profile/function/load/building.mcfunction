data modify storage scr_profile:runtime work.ctx.profile set value "building"
return run function scr_profile:initialize/profile/building with storage scr_profile:runtime work.ctx
