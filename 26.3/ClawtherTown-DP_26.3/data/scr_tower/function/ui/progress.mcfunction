# Presentation only: read the saved floor/completed/phase; never alter the Run.
scoreboard players set #ui_bar_floor scr_tw 0
scoreboard players set #ui_bar_done scr_tw 0
execute store result score #ui_bar_floor scr_tw run data get storage scr_tower:runtime p.run.floor
execute unless score #ui_bar_floor scr_tw matches 1..60 run return 0
execute store result score #ui_bar_done scr_tw run data get storage scr_tower:runtime p.run.completed
execute if score #ui_bar_done scr_tw matches ..-1 run scoreboard players set #ui_bar_done scr_tw 0
execute if score #ui_bar_done scr_tw matches 61.. run scoreboard players set #ui_bar_done scr_tw 60
data modify storage scr_tower:runtime progress set value {current:{text:"|",color:"yellow"},component:{text:"",font:"minecraft:default",italic:false,extra:[]}}
execute if data storage scr_tower:runtime p.run{phase:"cleared"} run data modify storage scr_tower:runtime progress.current.color set value "green"
execute if data storage scr_tower:runtime p.run{phase:"danger"} run data modify storage scr_tower:runtime progress.current.color set value "red"
scoreboard players set #ui_bar_five scr_tw 5
scoreboard players set #ui_bar_index scr_tw 1
function scr_tower:ui/progress_step
data modify storage scr_tower:runtime dialog.body append value {type:"minecraft:plain_message",contents:{text:""},width:380}
data modify storage scr_tower:runtime dialog.body[-1].contents set from storage scr_tower:runtime progress.component
