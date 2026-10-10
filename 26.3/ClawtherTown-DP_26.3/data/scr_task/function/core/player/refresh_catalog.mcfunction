# Only first Task access after load refreshes an existing player's catalog availability.
scoreboard players set #player_catalog_rev scr_tk -1
$execute if data storage scr_task:players players."$(key)".meta.catalog_revision store result score #player_catalog_rev scr_tk run data get storage scr_task:players players."$(key)".meta.catalog_revision
execute if score #player_catalog_rev scr_tk = #catalog_rev scr_tk run return 1
execute store result score #catalog_refreshed scr_tk run function scr_task:core/unlock/refresh
execute unless score #catalog_refreshed scr_tk matches 1 run return 0
$execute store result storage scr_task:players players."$(key)".meta.catalog_revision int 1 run scoreboard players get #catalog_rev scr_tk
return 1
