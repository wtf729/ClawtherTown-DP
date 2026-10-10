scoreboard players add @s soul_add 20
function scr:soul/reward

scoreboard players add @s clawther_coin_add 50
function scr:clawther_coin/reward

scoreboard players add @s mystic_coin 2

tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了初级签到礼物: ","color":"yellow","bold":false},{"text":"[灵魂]*20","color":"aqua","bold":false},{"text":", ","color":"yellow","bold":false},{"text":"[鹰翎币]*50","color":"aqua","bold":false},{"text":", ","color":"yellow","bold":false},{"text":"[秘币]*2","color":"light_purple","bold":false},{"text":" 与 ","color":"yellow","bold":false},{"text":"[奇珍矿石]*1","color":"light_purple","bold":false},{"text":" !","color":"yellow","bold":false}]

function scr_mail:source/sign_in_i

#loot spawn ~ ~ ~ loot scr:materials/appreciation_ticket_i
#tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"aqua"},{"text":"[感谢票]*1","color":"aqua"},{"text":" !","color":"aqua"}]}