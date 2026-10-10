# Internal display interface: selected Task context, trusted kind; no lifecycle writes.
execute unless entity @s[type=minecraft:player] run return 0
execute unless data storage scr_task:runtime work.ctx.title run return 0
data remove storage scr_task:runtime work.notice
$data modify storage scr_task:runtime work.notice set from storage scr_task:runtime notice_kinds[{kind:"$(kind)"}]
execute unless data storage scr_task:runtime work.notice run return 0
execute if data storage scr_task:runtime work.notice{kind:"subtask_completed"} unless data storage scr_task:runtime work.ctx.subtasks[0] run return 0
function scr_task:ui/name/read with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.notice.message.with[0] set from storage scr_task:ui display_name
function scr_task:ui/notification/bind with storage scr_task:runtime work.ctx
scoreboard players set #notice scr_tk 0
execute if data storage scr_task:runtime work.notice.base run function scr_task:ui/notification/toast with storage scr_task:runtime work.notice
# Future tasks without generated toast assets retain a translated chat notification.
execute unless score #notice scr_tk matches 1 run tellraw @s {nbt:"work.notice.message",storage:"scr_task:runtime",interpret:true}
execute if data storage scr_task:runtime work.notice.sound run function scr_task:ui/notification/sound with storage scr_task:runtime work.notice
data remove storage scr_task:runtime work.notice
return 1
