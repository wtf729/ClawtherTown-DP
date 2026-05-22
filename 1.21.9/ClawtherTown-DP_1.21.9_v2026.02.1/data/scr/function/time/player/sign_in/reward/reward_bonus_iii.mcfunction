scoreboard players add @s soul_add 60
function scr:soul/reward

scoreboard players add @s clawther_coin_add 150
function scr:clawther_coin/reward

scoreboard players add @s mystic_coin 6

tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了高级签到礼物: ","color":"yellow"},{"text":"[灵魂]*60","color":"aqua"},{"text":", ","color":"yellow"},{"text":"[鹰翎币]*150","color":"aqua"},{"text":", ","color":"yellow"},{"text":"[秘币]*6","color":"light_purple"},{"text":" 与 ","color":"yellow"},{"text":"[奇珍矿石]*3","color":"light_purple"},{"text":" !","color":"yellow"}]}

loot spawn ~ ~ ~ loot scr:case/case/case_rare_ore
loot spawn ~ ~ ~ loot scr:case/case/case_rare_ore
loot spawn ~ ~ ~ loot scr:case/case/case_rare_ore


#loot spawn ~ ~ ~ loot scr:materials/appreciation_ticket_iii
#tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"aqua"},{"text":"[特大感谢票]*1","color":"aqua"},{"text":" !","color":"aqua"}]}