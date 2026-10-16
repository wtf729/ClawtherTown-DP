# Bounded business maintenance. Only catalog entries with starting mail are considered.
schedule function scr_task:core/start_items/retry 30s replace
execute if data storage scr_task:runtime catalog[{start_items:{}}] as @a at @s run function scr_task:core/start_items/retry_player
