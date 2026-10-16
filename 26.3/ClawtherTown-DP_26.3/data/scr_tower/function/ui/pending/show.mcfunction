data modify storage scr_tower:runtime dialog.title set value {translate:"gui.scr.tower.pending_title"}
execute if data storage scr_tower:runtime p.run{phase:"settled"} run data modify storage scr_tower:runtime dialog.title set value {translate:"gui.scr.tower.record_title"}

data modify storage scr_tower:runtime text_args set value {floor:0}
data modify storage scr_tower:runtime text_args.floor set from storage scr_tower:runtime p.run.floor
function scr_tower:ui/text/pending_progress with storage scr_tower:runtime text_args
function scr_tower:ui/pending/build
execute store result score #row_count scr_tw run data get storage scr_tower:runtime aggregate
scoreboard players set #page_size scr_tw 6
scoreboard players operation #pages scr_tw = #row_count scr_tw
scoreboard players add #pages scr_tw 5
scoreboard players operation #pages scr_tw /= #page_size scr_tw
execute if score #pages scr_tw matches 0 run scoreboard players set #pages scr_tw 1
scoreboard players operation #max_page scr_tw = #pages scr_tw
scoreboard players remove #max_page scr_tw 1
execute store result score #page scr_tw run data get storage scr_tower:runtime nav.page
execute if score #page scr_tw matches ..-1 run scoreboard players set #page scr_tw 0
execute if score #page scr_tw > #max_page scr_tw run scoreboard players operation #page scr_tw = #max_page scr_tw
execute store result storage scr_tower:runtime nav.page int 1 run scoreboard players get #page scr_tw
execute store result storage scr_tower:runtime pages int 1 run scoreboard players get #pages scr_tw
scoreboard players operation #display_page scr_tw = #page scr_tw
execute store result storage scr_tower:runtime display_page int 1 run scoreboard players add #display_page scr_tw 1
data modify storage scr_tower:runtime text_args set value {"display_page":0,"pages":0}
data modify storage scr_tower:runtime text_args.display_page set from storage scr_tower:runtime display_page
data modify storage scr_tower:runtime text_args.pages set from storage scr_tower:runtime pages
function scr_tower:ui/text/pending_page with storage scr_tower:runtime text_args
scoreboard players operation #view_index scr_tw = #page scr_tw
scoreboard players operation #view_index scr_tw *= #page_size scr_tw
scoreboard players set #view_rows scr_tw 0
execute if score #row_count scr_tw matches 0 run function scr_tower:ui/pending/empty
function scr_tower:ui/pending/rows
execute if score #view_unknown scr_tw matches 1.. run function scr_tower:ui/pending/unknown
function scr_tower:ui/pending/navigation
function scr_tower:ui/pending/back
