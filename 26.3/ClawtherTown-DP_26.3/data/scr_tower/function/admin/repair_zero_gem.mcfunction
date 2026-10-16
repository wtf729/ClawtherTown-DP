# Operator entry point. No reset or forced-settled path; exact correction is journaled.
execute store result score #repair_ok scr_tw run function scr_tower:context/open
execute unless score #repair_ok scr_tw matches 1 run return 0
$data modify storage scr_tower:runtime repair_input set value {index:$(index)}
execute store result score #repair_ok scr_tw run function scr_tower:mail/repair/start
execute unless score #repair_ok scr_tw matches 1 run tellraw @s {translate:"message.scr.tower.repair_zero_failed",color:"red"}
execute unless score #repair_ok scr_tw matches 1 run return 0
function scr_tower:admin/repair_zero_gem_success with storage scr_tower:runtime repair_args
function scr_tower:mail/retry
function scr_tower:ui/open_run
return 1
