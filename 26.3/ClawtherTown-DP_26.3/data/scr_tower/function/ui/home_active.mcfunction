data modify storage scr_tower:runtime text_args set value {"p_run_floor":0}
data modify storage scr_tower:runtime text_args.p_run_floor set from storage scr_tower:runtime p.run.floor
function scr_tower:ui/text/home_active with storage scr_tower:runtime text_args
execute if data storage scr_tower:runtime p.run{tower:"sky"} run data modify storage scr_tower:runtime dialog.body[-1].contents.with[0] set value {translate:"gui.scr.tower.sky"}
