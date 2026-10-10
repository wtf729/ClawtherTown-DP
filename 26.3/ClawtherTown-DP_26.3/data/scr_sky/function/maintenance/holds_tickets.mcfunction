data modify storage scr_sky:travel_tickets work.tickets set from storage scr_sky:maintenance job.hub_tickets
execute if data storage scr_sky:maintenance job.source run data modify storage scr_sky:travel_tickets work.tickets append from storage scr_sky:maintenance job.source
execute if data storage scr_sky:maintenance job.starter_tickets run data modify storage scr_sky:travel_tickets work.tickets append from storage scr_sky:maintenance job.starter_tickets[]
function scr_sky:jobs/travel_tickets/job_holds
