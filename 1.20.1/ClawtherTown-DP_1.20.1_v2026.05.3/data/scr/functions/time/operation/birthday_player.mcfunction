advancement revoke @s only scr:special/birthday
advancement grant @s only scr:special/birthday

execute at @s run loot spawn ~ ~ ~ loot scr:case/case/case_special_item_ii
execute at @s run loot spawn ~ ~ ~ loot scr:case/case/case_special_item_ii
execute at @s run loot spawn ~ ~ ~ loot scr:case/case/case_special_item_ii
execute at @s run loot spawn ~ ~ ~ loot scr:tools/staff/staff_clear_spring_custom_1


tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份生日礼物: ","color":"aqua"},{"text":"[奇珍矿脉]*3","color":"gold"},{"text":" !","color":"aqua"}]}
tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份生日礼物: ","color":"aqua"},{"text":"[法杖 (★) | Starry]","color":"light_purple"},{"text":" !","color":"aqua"}]}