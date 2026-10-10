data modify storage scr_sky:runtime work.kind set value "travel"
data modify storage scr_sky:runtime work.ctx.id set value 0
data modify storage scr_sky:runtime work.ctx.target set value "hub"
function scr_sky:jobs/start
data modify storage scr_sky:jobs active.spawn set from storage scr_sky:config hub
data modify storage scr_sky:jobs active.phase set value "hub_prepare"
