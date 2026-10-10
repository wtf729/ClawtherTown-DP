scoreboard players set #cleared scr_sk 0
execute store result score #cleared scr_sk in scr_sky:scanner run function scr_sky:scan/buffer/clear
execute unless score #cleared scr_sk matches 1 run return 0
execute if data storage scr_sky:scan job{outcome:"aborted"} run function scr_sky:scan/abort_record with storage scr_sky:scan job
function scr_sky:scan/chunk/release with storage scr_sky:scan job
execute if data storage scr_sky:scan job{buffer_ticket:1b} in scr_sky:scanner run forceload remove 0 0
execute if data storage scr_sky:scan job{ref_ticket:1b} run function scr_sky:jobs/travel_tickets/queue {x:-1048576,z:-1048576,owner:"scanner"}
data modify storage scr_sky:scan job.buffer_ticket set value 0b
data modify storage scr_sky:scan job.ref_ticket set value 0b
data modify storage scr_sky:scan last_job set from storage scr_sky:scan job
data remove storage scr_sky:scan job
# Only a successfully committed scan reaches this once, after job cleanup.
execute if data storage scr_sky:scan last_job{outcome:"committed"} run function scr_sky:scan/notify/prepare with storage scr_sky:scan last_job
execute if data storage scr_sky:scan last_job{outcome:"committed"} as @a at @s run function scr_task:event/sky/open {event:"level"}
