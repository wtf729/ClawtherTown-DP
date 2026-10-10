scoreboard players add @s soul_add 60
function scr:soul/reward

scoreboard players add @s clawther_coin_add 150
function scr:clawther_coin/reward

scoreboard players add @s mystic_coin 6

tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了高级签到礼物: ","color":"yellow","bold":false},{"text":"[灵魂]*60","color":"aqua","bold":false},{"text":", ","color":"yellow","bold":false},{"text":"[鹰翎币]*150","color":"aqua","bold":false},{"text":", ","color":"yellow","bold":false},{"text":"[秘币]*6","color":"light_purple","bold":false},{"text":" 与 ","color":"yellow","bold":false},{"text":"[奇珍矿石]*3","color":"light_purple","bold":false},{"text":" !","color":"yellow","bold":false}]

function scr_mail:source/sign_in_iii


#loot spawn ~ ~ ~ loot scr:materials/appreciation_ticket_iii
#tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"aqua"},{"text":"[特大感谢票]*1","color":"aqua"},{"text":" !","color":"aqua"}]}