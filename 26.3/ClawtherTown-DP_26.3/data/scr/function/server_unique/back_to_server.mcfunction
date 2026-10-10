function scr:server_unique/update_scoreboard

tellraw @s [{"text":"你不在的这段时间里，鹰翎镇发生了这些改变:","color":"yellow"}]
function scr:updatelog
function scr:time/tellraw/player
advancement revoke @s only scr:enter_server


scoreboard players add @s clawther_coin_add 50
function scr:clawther_coin/reward
tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"white","bold":false},{"text":"[鹰翎币]","color":"aqua","bold":false},{"text":" *50","color":"yellow","bold":false},{"text":" !","color":"white","bold":false}]


#loot give @s loot scr:case/case/case_special_item_ii
#tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"white"},{"text":"[★ 奇珍矿脉 ★]","color":"yellow"},{"text":" !","color":"white"}]}

function scr_mail:source/back_to_server
tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"white","bold":false},{"text":"[双倍翎币卡 - III]","color":"aqua","bold":false},{"text":" !","color":"white","bold":false}]
tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"white","bold":false},{"text":"[双倍灵魂卡 - III]","color":"aqua","bold":false},{"text":" !","color":"white","bold":false}]


execute as @s at @s unless score @s title_special_4 matches 1 run function scr:title/grant/special_4

function scr:server_unique/update/update_1
