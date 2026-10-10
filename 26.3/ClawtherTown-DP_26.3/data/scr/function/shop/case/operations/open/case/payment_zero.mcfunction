tellraw @s [{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.trader","fallback":"行商鹰"},{"text":"] ","color":"gold","bold":true},{"text":"支付失败! ","color":"red"},{"text":"购买数量为0!","color":"yellow"},{"text":"\n--------------------------------------------------","color":"dark_gray"}]
playsound minecraft:entity.villager.no ambient @s ~ ~ ~

scoreboard players set @s scr_open_amount 0
scoreboard players set @s scr_open_bill 0
