tellraw @s [{"text":"[","color":"gold","bold":true},{"translate":"character.scr.trader","fallback":"行商鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"translate":"message.scr.shop.sale_stopped","fallback":"区域已改变，出售已停止。已收取的物品将按实际数量结算。","color":"yellow","bold":false}]
function scr:shop/sell/operations/sell_end
return 0
