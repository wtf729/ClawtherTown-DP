execute unless entity @s[type=minecraft:player] run return 0
execute store result score #ui_snapshot_ok scr_sk run function scr_sky:api/ui_snapshot
execute unless score #ui_snapshot_ok scr_sk matches 1 run return run function scr_sky:ui/fallback
execute unless data storage scr_sky:runtime result{ok:1b} run return run function scr_sky:ui/fallback
data modify storage scr_sky:ui work set value {ctx:{}}
data modify storage scr_sky:ui work.snapshot set from storage scr_sky:runtime result
data modify storage scr_sky:ui work.ctx.key set from storage scr_sky:runtime result.key
data modify storage scr_sky:ui work.dialog set from storage scr_sky:ui template
function scr_sky:ui/session_reset with storage scr_sky:ui work.ctx
function scr_sky:ui/dispatch
function scr_sky:ui/session_page with storage scr_sky:ui work.ctx
# Every successfully processed route produces a dialog; no indefinite waiting screen.
function scr_sky:ui/show with storage scr_sky:ui work
