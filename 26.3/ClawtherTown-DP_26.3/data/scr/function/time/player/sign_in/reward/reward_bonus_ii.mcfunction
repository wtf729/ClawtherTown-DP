scoreboard players add @s soul_add 40
function scr:soul/reward

scoreboard players add @s clawther_coin_add 100
function scr:clawther_coin/reward

scoreboard players add @s mystic_coin 4

tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了中级签到礼物: ","color":"yellow","bold":false},{"text":"[灵魂]*40","color":"aqua","bold":false},{"text":", ","color":"yellow","bold":false},{"text":"[鹰翎币]*100","color":"aqua","bold":false},{"text":", ","color":"yellow","bold":false},{"text":"[秘币]*4","color":"light_purple","bold":false},{"text":" 与 ","color":"yellow","bold":false},{"text":"[奇珍矿石]*2","color":"light_purple","bold":false},{"text":" !","color":"yellow","bold":false}]

function scr_mail:source/sign_in_ii

#loot spawn ~ ~ ~ loot scr:materials/appreciation_ticket_ii
#tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"aqua"},{"text":"[大感谢票]*1","color":"aqua"},{"text":" !","color":"aqua"}]}