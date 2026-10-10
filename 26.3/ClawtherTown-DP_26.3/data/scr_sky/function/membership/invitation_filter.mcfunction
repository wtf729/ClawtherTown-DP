data modify storage scr_sky:runtime work.invitation_entry set from storage scr_sky:runtime work.invitation_queue[0]
$execute if data storage scr_sky:runtime work.invitation_entry{target:"$(key)",state:"pending"} run data modify storage scr_sky:runtime result.invitations append from storage scr_sky:runtime work.invitation_queue[0]
