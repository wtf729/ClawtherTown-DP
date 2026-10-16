execute if data storage scr_tower:runtime nav{view:"home"} run return run function scr_tower:ui/home
execute if data storage scr_tower:runtime nav{view:"confirm_start",selected_tower:"main"} run return run function scr_tower:ui/start_confirm
execute if data storage scr_tower:runtime nav{view:"confirm_start",selected_tower:"sky"} run return run function scr_tower:ui/start_confirm
execute if data storage scr_tower:runtime nav{view:"pending"} run return run function scr_tower:ui/pending/show
execute if data storage scr_tower:runtime nav{view:"confirm_exit"} if data storage scr_tower:runtime p.run{phase:"cards"} if score #allowed scr_tw matches 1 run return run function scr_tower:ui/exit_confirm
execute if data storage scr_tower:runtime nav{view:"confirm_exit"} if data storage scr_tower:runtime p.run{phase:"safe"} if score #allowed scr_tw matches 1 run return run function scr_tower:ui/exit_confirm
execute if data storage scr_tower:runtime nav{view:"confirm_exit"} if data storage scr_tower:runtime p.run{phase:"cleared"} if score #allowed scr_tw matches 1 run return run function scr_tower:ui/exit_confirm
execute if data storage scr_tower:runtime nav{view:"confirm_abandon"} if data storage scr_tower:runtime p.run{phase:"danger"} if score #allowed scr_tw matches 1 run return run function scr_tower:ui/abandon_confirm
execute if data storage scr_tower:runtime p.run{phase:"idle"} run return run function scr_tower:ui/go_home
execute if data storage scr_tower:runtime p.run{phase:"settled"} run return run function scr_tower:ui/summary
execute if data storage scr_tower:runtime p.run{phase:"abandoned"} run return run function scr_tower:ui/summary
function scr_tower:ui/status
execute unless score #allowed scr_tw matches 1 run return run function scr_tower:ui/locked
execute if data storage scr_tower:runtime p.run{phase:"cards"} run return run function scr_tower:ui/cards
execute if data storage scr_tower:runtime p.run{phase:"safe"} run return run function scr_tower:ui/cards
execute if data storage scr_tower:runtime p.run{phase:"cleared"} run return run function scr_tower:ui/cleared
execute if data storage scr_tower:runtime p.run{phase:"danger"} run return run function scr_tower:ui/danger
execute if data storage scr_tower:runtime p.run{phase:"settling"} run return run function scr_tower:ui/settling
function scr_tower:ui/recovery
return run function scr_tower:ui/view_pending
