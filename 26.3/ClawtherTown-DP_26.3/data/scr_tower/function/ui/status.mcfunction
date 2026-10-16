data modify storage scr_tower:runtime text_args set value {floor:0,wallet:0}
data modify storage scr_tower:runtime text_args.floor set from storage scr_tower:runtime p.run.floor
data modify storage scr_tower:runtime text_args.wallet set from storage scr_tower:runtime wallet
function scr_tower:ui/text/status_compact with storage scr_tower:runtime text_args
function scr_tower:ui/progress
execute unless data storage scr_tower:runtime p.run{phase:"cards"} unless data storage scr_tower:runtime p.run{phase:"safe"} unless data storage scr_tower:runtime p.run{phase:"cleared"} unless data storage scr_tower:runtime p.run{phase:"danger"} run function scr_tower:ui/text/wallet_line with storage scr_tower:runtime text_args
execute if data storage scr_tower:runtime p.run{debug:1} run function scr_tower:ui/debug_notice
execute if data storage scr_tower:runtime p.run{phase:"cards"} run function scr_tower:ui/floor_notice
execute if data storage scr_tower:runtime p.run{phase:"safe"} run function scr_tower:ui/floor_notice
execute if data storage scr_tower:runtime p.run{phase:"cleared"} run function scr_tower:ui/floor_notice
execute if data storage scr_tower:runtime p.run{phase:"danger"} run function scr_tower:ui/floor_notice
