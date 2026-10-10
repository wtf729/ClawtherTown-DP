# Keep persistent mail records untouched. Filter a temporary view, then walk it newest-first.
data modify storage scr_mail:runtime work.view set value []
$execute if data storage scr_mail:runtime work.ctx{view:"history"} run data modify storage scr_mail:runtime work.view append from storage scr_mail:players players."$(key)".messages[{state:"claimed"}]
$execute unless data storage scr_mail:runtime work.ctx{view:"history"} run data modify storage scr_mail:runtime work.view append from storage scr_mail:players players."$(key)".messages[]
execute unless data storage scr_mail:runtime work.ctx{view:"history"} run data remove storage scr_mail:runtime work.view[{state:"claimed"}]
execute store result score #length scr_ml_n run data get storage scr_mail:runtime work.view
scoreboard players set #eight scr_ml_n 8
scoreboard players operation #max_page scr_ml_n = #length scr_ml_n
scoreboard players remove #max_page scr_ml_n 1
execute if score #max_page scr_ml_n matches ..-1 run scoreboard players set #max_page scr_ml_n 0
scoreboard players operation #max_page scr_ml_n /= #eight scr_ml_n
execute if score #page scr_ml_n matches ..-1 run scoreboard players set #page scr_ml_n 0
execute if score #page scr_ml_n > #max_page scr_ml_n run scoreboard players operation #page scr_ml_n = #max_page scr_ml_n
scoreboard players operation #offset scr_ml_n = #page scr_ml_n
scoreboard players operation #offset scr_ml_n *= #eight scr_ml_n
scoreboard players operation #index scr_ml_n = #length scr_ml_n
scoreboard players remove #index scr_ml_n 1
scoreboard players operation #index scr_ml_n -= #offset scr_ml_n
scoreboard players set #shown scr_ml_n 0
execute store result storage scr_mail:runtime work.ctx.page int 1 run scoreboard players get #page scr_ml_n
scoreboard players operation #display_page scr_ml_n = #page scr_ml_n
scoreboard players add #display_page scr_ml_n 1
execute store result storage scr_mail:runtime work.ctx.display_page int 1 run scoreboard players get #display_page scr_ml_n
execute store result storage scr_mail:runtime work.ctx.length int 1 run scoreboard players get #length scr_ml_n
function scr_mail:ui/header with storage scr_mail:runtime work.ctx
execute if score #index scr_ml_n matches 0.. run function scr_mail:ui/list_loop
execute if score #length scr_ml_n matches 0 run data modify storage scr_mail:runtime work.dialog.body append value {type:"minecraft:plain_message",contents:{"translate":"gui.scr.mail.empty","fallback":"暂无邮件","color":"gray"},width:350}
# Every history page has eight slots; a nonempty inbox uses the same fixed layout.
scoreboard players operation #mail_slots scr_ml_n = #shown scr_ml_n
scoreboard players set #fixed_mail_area scr_ml_n 0
execute if score #length scr_ml_n matches 1.. run scoreboard players set #fixed_mail_area scr_ml_n 1
execute if data storage scr_mail:runtime work.ctx{view:"history"} run scoreboard players set #fixed_mail_area scr_ml_n 1
execute if score #fixed_mail_area scr_ml_n matches 1 if score #mail_slots scr_ml_n matches ..7 run function scr_mail:ui/list_padding
# Two inert cells form the separator before the reserved navigation row.
execute if score #fixed_mail_area scr_ml_n matches 1 run data modify storage scr_mail:runtime work.dialog.actions append value {label:{text:"----------",color:"dark_gray"},width:170}
execute if score #fixed_mail_area scr_ml_n matches 1 run data modify storage scr_mail:runtime work.dialog.actions append value {label:{text:"----------",color:"dark_gray"},width:170}
function scr_mail:ui/navigation
function scr_mail:ui/list_footer
