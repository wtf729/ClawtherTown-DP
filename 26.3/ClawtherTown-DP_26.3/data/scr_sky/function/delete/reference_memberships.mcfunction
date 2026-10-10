execute unless data storage scr_sky:runtime work.ref_memberships[0] run return 1
execute store result score #ref_id scr_sk run data get storage scr_sky:runtime work.ref_memberships[0] 1
execute store result score #check_id scr_sk run data get storage scr_sky:runtime work.ctx.id 1
execute if score #ref_id scr_sk = #check_id scr_sk run data modify storage scr_sky:runtime result.references append value "membership_index"
data remove storage scr_sky:runtime work.ref_memberships[0]
return run function scr_sky:delete/reference_memberships
