# Targeted field updates preserve last_claim_started, names and concurrent primary selection.
$data modify storage scr_sky:players players."$(key)".owned_island_id set value $(id)
$data modify storage scr_sky:runtime work.member_queue set from storage scr_sky:players players."$(key)".memberships
data modify storage scr_sky:runtime work.member_new set value []
function scr_sky:membership/filter_index
$data modify storage scr_sky:runtime work.member_new append value $(id)
$data modify storage scr_sky:players players."$(key)".memberships set from storage scr_sky:runtime work.member_new
