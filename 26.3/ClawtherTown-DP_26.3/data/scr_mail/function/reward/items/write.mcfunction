$execute if items entity @s $(slot) * run return 0
data modify storage scr_mail:runtime work.item_tx set value {phase:"executing"}
data modify storage scr_mail:runtime work.item_tx.slot set from storage scr_mail:runtime work.ctx.slot
data modify storage scr_mail:runtime work.item_tx.expected set from storage scr_mail:runtime work.expected
$data modify storage scr_mail:players players."$(key)".transaction.item set from storage scr_mail:runtime work.item_tx
$execute store success score #ok scr_ml_ok run item override entity @s $(slot) from entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] contents
execute unless score #ok scr_ml_ok matches 1 run return 0
$execute store success score #ok scr_ml_ok run item replace entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] contents from entity @s $(slot)
execute unless score #ok scr_ml_ok matches 1 run return 0
data modify storage scr_mail:runtime work.check set from entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] item
execute store success score #tmp scr_ml_n run data modify storage scr_mail:runtime work.check set from storage scr_mail:runtime work.expected
execute if score #tmp scr_ml_n matches 1 run return 0
$data modify storage scr_mail:players players."$(key)".transaction.item.phase set value "verified"
return 1
