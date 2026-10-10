# ADMIN ONLY: /execute as <player> at @s run function scr_profile:recovery/rollback
# Replaces partial live data with the last saved source. Never saves partial data first.
execute unless entity @s[type=minecraft:player] run return 0
execute unless score @s scr_pf_lock matches 1 run return 0
execute if score #busy scr_pf_lock matches 1 run return 0
execute store result score @s scr_pf_ok run function scr_profile:context/open
execute if score @s scr_pf_ok matches 1 run function scr_profile:recovery/bound with storage scr_profile:runtime work.ctx
function scr_profile:context/release
