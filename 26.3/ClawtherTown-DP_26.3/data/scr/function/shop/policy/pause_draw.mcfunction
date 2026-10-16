execute unless entity @s[tag=scr.shop_draw_paused] run tellraw @s [{"text":"[","color":"gold","bold":true},{"translate":"character.scr.trader","fallback":"行商鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"translate":"message.scr.shop.draw_paused","fallback":"抽奖已暂停。返回开始抽奖时的区域后将继续，已支付的次数会保留。","color":"yellow","bold":false}]
tag @s add scr.shop_draw_paused
return 0
