tellraw @s {"text":"","extra":[{"text":"你不在的这段时间里，鹰翎镇发生了这些改变:","color":"yellow"}]}
function scr:updatelog
function scr:time/tellraw/player
advancement revoke @s only scr:enter_server


scoreboard players add @s clawther_coin_add 50
function scr:clawther_coin/reward
tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"white"},{"text":"[鹰翎币]","color":"aqua"},{"text":" *50","color":"yellow"},{"text":" !","color":"white"}]}


#loot give @s loot scr:case/case/case_special_item_ii
#tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"white"},{"text":"[★ 奇珍矿脉 ★]","color":"yellow"},{"text":" !","color":"white"}]}

loot give @s loot scr:card/card_clawther_coin_double_iii
tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"white"},{"text":"[双倍翎币卡 - III]","color":"aqua"},{"text":" !","color":"white"}]}
loot give @s loot scr:card/card_soul_double_iii
tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"white"},{"text":"[双倍灵魂卡 - III]","color":"aqua"},{"text":" !","color":"white"}]}


execute as @s at @s unless score @s title_special_4 matches 1 run function scr:title/grant/special_4

function scr:server_unique/update/update_1