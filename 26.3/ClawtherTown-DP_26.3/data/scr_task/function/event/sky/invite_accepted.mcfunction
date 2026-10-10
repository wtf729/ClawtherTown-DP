execute if data storage scr_task:runtime {busy:1b} run return 0
execute unless data storage scr_sky:runtime work.invite run return 0
data modify storage scr_task:runtime busy set value 1b
data modify storage scr_task:runtime work set value {ctx:{},address:{id:"skywing/sky_a17",field:"invited"}}
data modify storage scr_task:runtime work.address.key set from storage scr_sky:runtime work.invite.inviter
data modify storage scr_task:runtime work.address.unique set from storage scr_sky:runtime work.invite.target
function scr_task:event/sky/invite_owner with storage scr_task:runtime work.address
function scr_task:core/context/close
return 1
