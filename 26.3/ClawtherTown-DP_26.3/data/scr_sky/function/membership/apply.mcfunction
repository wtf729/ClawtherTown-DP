$execute if data storage scr_sky:runtime work.island{owner:"$(target)"} run data modify storage scr_sky:runtime result.reason set value "owner_target"
$execute if data storage scr_sky:runtime work.island{owner:"$(target)"} run return 0

scoreboard players set #oldrole scr_sk 0

$execute if data storage scr_sky:runtime work.island.roles."$(target)" run execute store result score #oldrole scr_sk run data get storage scr_sky:runtime work.island.roles."$(target)" 1

execute if score #role scr_sk matches 2 if score #oldrole scr_sk matches 2.. run data modify storage scr_sky:runtime result.reason set value "admin_limit"
execute if score #role scr_sk matches 2 if score #oldrole scr_sk matches 2.. run return 0

execute if score #role scr_sk matches 2 if score #newrole scr_sk matches 2.. run data modify storage scr_sky:runtime result.reason set value "admin_limit"
execute if score #role scr_sk matches 2 if score #newrole scr_sk matches 2.. run return 0

$execute unless data storage scr_sky:players players."$(target)" run data modify storage scr_sky:players players."$(target)" set value {version:1,owned_island_id:0,primary_island_id:0,memberships:[]}

$data modify storage scr_sky:runtime work.island.roles."$(target)" set value $(role)

$execute if score #newrole scr_sk matches 0 run data remove storage scr_sky:runtime work.island.roles."$(target)"

function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
$function scr_sky:player/index {key:"$(target)"}

$data modify storage scr_sky:runtime work.member_queue set from storage scr_sky:players players."$(target)".memberships

data modify storage scr_sky:runtime work.member_new set value []

function scr_sky:membership/filter_index

$execute if score #newrole scr_sk matches 1..2 run data modify storage scr_sky:runtime work.member_new append value $(id)

$data modify storage scr_sky:players players."$(target)".memberships set from storage scr_sky:runtime work.member_new

data modify storage scr_sky:runtime work.repair_primary set value 0b
$execute if score #newrole scr_sk matches 0 if data storage scr_sky:players players."$(target)"{primary_island_id:$(id)} run data modify storage scr_sky:runtime work.repair_primary set value 1b
$execute if score #newrole scr_sk matches 0 if data storage scr_sky:players players."$(target)"{primary_island_id:$(id)} run data modify storage scr_sky:players players."$(target)".primary_island_id set value 0

function scr_sky:membership/repair_target with storage scr_sky:runtime work.ctx
data modify storage scr_sky:runtime result.ok set value 1b
execute if score #oldrole scr_sk matches 0 if score #newrole scr_sk matches 1..2 run function scr_task:event/sky/membership
