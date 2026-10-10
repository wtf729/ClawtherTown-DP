execute unless data storage scr_sky:runtime work.island{state:"active"} run return 0
execute unless data storage scr_sky:runtime work.island{reset_state:"idle"} unless data storage scr_sky:runtime work.island{reset_state:"awaiting_confirmation"} run return 0
execute unless data storage scr_sky:runtime work.island{delete_state:"idle"} unless data storage scr_sky:runtime work.island{delete_state:"awaiting_confirmation"} run return 0
# scan_state does not gate travel; all other execution/locked states fail closed.
return 1
