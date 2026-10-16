data modify storage scr_tower:runtime button set value {label:{translate:"gui.scr.tower.quit"},width:170}
execute unless data storage scr_tower:runtime nav{view:"home"} unless data storage scr_tower:runtime p.run{phase:"idle"} unless data storage scr_tower:runtime p.run{phase:"settled"} unless data storage scr_tower:runtime p.run{phase:"abandoned"} run data modify storage scr_tower:runtime button.label set value {translate:"gui.scr.tower.close"}
data modify storage scr_tower:runtime route set value {op:"close",index:-1}
execute store result score #issued scr_tw run function scr_tower:ui/issue
execute if score #issued scr_tw matches 1 run data modify storage scr_tower:runtime dialog.exit_action set from storage scr_tower:runtime button
# If tokens are exhausted, retain Esc closure and omit an inert exit button.
