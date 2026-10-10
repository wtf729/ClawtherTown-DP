data modify storage scr_profile:runtime work.ctx.profile set value "star"
return run function scr_profile:initialize/profile/star with storage scr_profile:runtime work.ctx
