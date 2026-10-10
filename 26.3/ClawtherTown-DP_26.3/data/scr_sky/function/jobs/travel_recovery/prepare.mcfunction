execute store result score #travel_guard scr_sk run function scr_sky:jobs/travel_recovery/guard
execute unless score #travel_guard scr_sk matches 1 run return run function scr_sky:jobs/recover
# Transfer only owned tickets to the existing deferred-release queue before replacing the footprint.
data modify storage scr_sky:runtime work.release_queue set from storage scr_sky:jobs active.tickets
function scr_sky:jobs/release_loop
data modify storage scr_sky:jobs active.tickets set value []
# Verify canonical grid geometry before deriving the immutable Starter anchor.
execute store result score #id scr_sk run data get storage scr_sky:jobs active.id
function scr_sky:island/coordinates
data modify storage scr_sky:runtime work.region_compare set from storage scr_sky:runtime work.region
execute store success score #region_changed scr_sk run data modify storage scr_sky:runtime work.region_compare set from storage scr_sky:runtime work.island.region
execute if score #region_changed scr_sk matches 1 run return run function scr_sky:jobs/recover
data modify storage scr_sky:jobs active.search set value {column:0}
data modify storage scr_sky:jobs active.search.cx set from storage scr_sky:runtime result.center.x
data modify storage scr_sky:jobs active.search.cz set from storage scr_sky:runtime result.center.z
execute store result score #search_top scr_sk run data get storage scr_sky:islands geometry.max_y
scoreboard players add #search_top scr_sk 1
execute store result storage scr_sky:jobs active.search.y int 1 run scoreboard players get #search_top scr_sk
execute store result score #search_bottom scr_sk run data get storage scr_sky:islands geometry.min_y
scoreboard players add #search_bottom scr_sk 1
execute store result storage scr_sky:jobs active.search.bottom int 1 run scoreboard players get #search_bottom scr_sk
execute store result score #place_x scr_sk run data get storage scr_sky:jobs active.search.cx
execute store result score #place_z scr_sk run data get storage scr_sky:jobs active.search.cz
scoreboard players operation #endx scr_sk = #place_x scr_sk
scoreboard players operation #endz scr_sk = #place_z scr_sk
scoreboard players remove #place_x scr_sk 4
scoreboard players remove #place_z scr_sk 4
scoreboard players add #endx scr_sk 4
scoreboard players add #endz scr_sk 4
function scr_sky:jobs/make_tickets
data modify storage scr_sky:jobs active.after_load set value "travel_recovery_search"
data modify storage scr_sky:jobs active.phase set value "load"
data modify storage scr_sky:jobs active.wait set value 0
