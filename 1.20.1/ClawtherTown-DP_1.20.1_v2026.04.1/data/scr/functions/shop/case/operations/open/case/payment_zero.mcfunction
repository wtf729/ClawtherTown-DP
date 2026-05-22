tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------\n","color":"dark_gray"},{"text":"[","color":"gold","bold":true},{"text":"行商鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"支付失败! ","color":"red"},{"text":"购买数量为0!","color":"yellow"},{"text":"\n--------------------------------------------------","color":"dark_gray"}]}
playsound minecraft:entity.villager.no ambient @s ~ ~ ~

scoreboard players set @s shop_case_amount 0
scoreboard players set @s shop_case_bill 0