function scr_tower:ui/danger_notice
data modify storage scr_tower:runtime text_args set value {"p_run_cost":0}
data modify storage scr_tower:runtime text_args.p_run_cost set from storage scr_tower:runtime p.run.cost
function scr_tower:ui/text/pay_button with storage scr_tower:runtime text_args
data modify storage scr_tower:runtime route set value {"op":"pay","index":-1}
function scr_tower:ui/button
data modify storage scr_tower:runtime text_args set value {"p_run_waiver":0}
data modify storage scr_tower:runtime text_args.p_run_waiver set from storage scr_tower:runtime p.run.waiver
function scr_tower:ui/text/waiver_button with storage scr_tower:runtime text_args
data modify storage scr_tower:runtime route set value {"op":"waiver","index":-1}
function scr_tower:ui/button
data modify storage scr_tower:runtime button set value {"label":{"translate":"gui.scr.tower.abandon","color":"red"},"width":170}
data modify storage scr_tower:runtime route set value {"op":"abandon","index":-1}
function scr_tower:ui/button
function scr_tower:ui/view_pending
execute store result score #cost scr_tw run data get storage scr_tower:runtime p.run.cost
execute unless data storage scr_tower:runtime p.run{debug:1} unless score #wallet scr_tw >= #cost scr_tw run function scr_tower:ui/insufficient
