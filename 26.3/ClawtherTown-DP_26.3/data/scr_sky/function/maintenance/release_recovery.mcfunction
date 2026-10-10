function scr_sky:maintenance/pool_check
execute unless score #m_in_pool scr_sk matches 1 run return 0
function scr_sky:maintenance/released_check with storage scr_sky:maintenance job
