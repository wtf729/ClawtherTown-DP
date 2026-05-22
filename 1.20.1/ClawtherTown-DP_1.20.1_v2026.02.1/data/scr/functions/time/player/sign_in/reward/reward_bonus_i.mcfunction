scoreboard players add @s soul_add 20
function scr:soul/reward

scoreboard players add @s clawther_coin_add 50
function scr:clawther_coin/reward

scoreboard players add @s mystic_coin 2

tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了初级签到礼物: ","color":"yellow"},{"text":"[灵魂]*20","color":"aqua"},{"text":", ","color":"yellow"},{"text":"[鹰翎币]*50","color":"aqua"},{"text":", ","color":"yellow"},{"text":"[秘币]*2","color":"light_purple"},{"text":" 与 ","color":"yellow"},{"text":"[奇珍矿石]*1","color":"light_purple"},{"text":" !","color":"yellow"}]}

loot spawn ~ ~ ~ loot scr:case/case/case_rare_ore

#loot spawn ~ ~ ~ loot scr:materials/appreciation_ticket_i
#tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"aqua"},{"text":"[感谢票]*1","color":"aqua"},{"text":" !","color":"aqua"}]}