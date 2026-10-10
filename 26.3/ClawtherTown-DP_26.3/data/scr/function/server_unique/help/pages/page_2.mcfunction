tellraw @s [{"text":"--------------------------------------------------","color":"dark_gray"}]
tellraw @s [{"text":"[","color":"gold","bold":true},{"text":"鹰翎镇 ▲ 知识之书","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"深入了解鹰翎镇... ","color":"aqua","bold":false},{"text":"(第 2 页 / 共 2 页)","color":"gold","bold":false}]
tellraw @s [{"text":"          [","color":"yellow"},{"text":"6","color":"light_purple"},{"text":"] ","color":"yellow"},{"text":"在线奖励","underlined":true,"color":"gold","click_event":{"action":"run_command","command":"/trigger scrhelp set 106"}}]
tellraw @s [{"text":"          [","color":"yellow"},{"text":"7","color":"light_purple"},{"text":"] ","color":"yellow"},{"text":"撰写中...","color":"dark_gray"}]
tellraw @s [{"text":"          [","color":"yellow"},{"text":"8","color":"light_purple"},{"text":"] ","color":"yellow"},{"text":"撰写中...","color":"dark_gray"}]
tellraw @s [{"text":"          [","color":"yellow"},{"text":"9","color":"light_purple"},{"text":"] ","color":"yellow"},{"text":"撰写中...","color":"dark_gray"}]
tellraw @s [{"text":"          [","color":"yellow"},{"text":"10","color":"light_purple"},{"text":"] ","color":"yellow"},{"text":"撰写中...","color":"dark_gray"}]
tellraw @s [{"text":"        > ","color":"light_purple"},{"text":"上一页","underlined":true,"color":"aqua","click_event":{"action":"run_command","command":"/trigger scrhelp set 1"}},{"text":"         > ","color":"light_purple"},{"text":"下一页","color":"dark_gray"}]
tellraw @s [{"text":"--------------------------------------------------","color":"dark_gray"}]

scoreboard players set @s scrhelp 0
function scr_task:event/help_opened
