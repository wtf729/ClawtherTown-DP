scoreboard players add @s soul_add 40
function scr:soul/reward

scoreboard players add @s clawther_coin_add 100
function scr:clawther_coin/reward

scoreboard players add @s mystic_coin 4

tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了中级签到礼物: ","color":"yellow"},{"text":"[灵魂]*40","color":"aqua"},{"text":", ","color":"yellow"},{"text":"[鹰翎币]*100","color":"aqua"},{"text":", ","color":"yellow"},{"text":"[秘币]*4","color":"light_purple"},{"text":" 与 ","color":"yellow"},{"text":"[奇珍矿石]*2","color":"light_purple"},{"text":" !","color":"yellow"}]}

loot spawn ~ ~ ~ loot scr:case/case/case_rare_ore
loot spawn ~ ~ ~ loot scr:case/case/case_rare_ore

#loot spawn ~ ~ ~ loot scr:materials/appreciation_ticket_ii
#tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"aqua"},{"text":"[大感谢票]*1","color":"aqua"},{"text":" !","color":"aqua"}]}