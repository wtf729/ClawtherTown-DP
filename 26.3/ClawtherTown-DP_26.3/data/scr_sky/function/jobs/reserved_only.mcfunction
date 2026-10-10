data modify storage scr_sky:runtime work.island.state set value "reserved"
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
function scr_sky:jobs/assign_owner with storage scr_sky:runtime work.ctx
data modify storage scr_sky:jobs active.outcome set value "reserved"
function scr_sky:jobs/finish
