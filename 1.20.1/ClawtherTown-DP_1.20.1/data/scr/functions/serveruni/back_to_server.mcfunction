tellraw @s {"text":"","extra":[{"text":"你不在的这段时间里，鹰翎镇发生了这些改变:","color":"yellow"}]}
function scr:updatelog
function scr:time/tellraw/player
advancement revoke @s only scr:enter_server

scoreboard players add @s clawther_coin_add 50
function scr:clawther_coin/reward
tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"aqua"},{"text":"[鹰翎币]*50","color":"aqua"},{"text":" !","color":"aqua"}]}


function scr:server_unique/update/update_1