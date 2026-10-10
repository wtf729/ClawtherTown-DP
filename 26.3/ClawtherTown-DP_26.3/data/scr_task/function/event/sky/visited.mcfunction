# jobs/travel_complete already checked the current island role and successful teleport.
execute if data storage scr_task:runtime {busy:1b} run return 0
execute unless data storage scr_sky:jobs active{kind:"travel"} run return 0
execute if data storage scr_sky:jobs active{id:0} run return 0
data modify storage scr_task:runtime busy set value 1b
data modify storage scr_task:runtime work set value {ctx:{},address:{id:"skywing/sky_a18",field:"visited"}}
data modify storage scr_task:runtime work.address.key set from storage scr_sky:jobs active.key
data modify storage scr_task:runtime work.address.island set from storage scr_sky:jobs active.id
function scr_task:event/sky/island_key with storage scr_task:runtime work.address
function scr_task:event/sky/visit_joined with storage scr_task:runtime work.address
function scr_task:core/context/close
return 1
