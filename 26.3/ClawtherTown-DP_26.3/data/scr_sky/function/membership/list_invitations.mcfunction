data modify storage scr_sky:runtime result.invitations set value []
data modify storage scr_sky:runtime work.invitation_queue set value []
data modify storage scr_sky:runtime work.invitation_queue set from storage scr_sky:invites pending
function scr_sky:membership/invitation_loop
execute store result storage scr_sky:runtime result.invitation_count int 1 run data get storage scr_sky:runtime result.invitations
