data modify storage scr_profile:runtime work.ctx.profile set value "sky"
return run function scr_profile:initialize/profile/sky with storage scr_profile:runtime work.ctx
