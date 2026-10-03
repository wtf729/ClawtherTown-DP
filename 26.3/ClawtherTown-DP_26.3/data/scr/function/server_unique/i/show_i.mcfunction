tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------","color":"dark_gray"}]}
tellraw @s {"text":"","extra":[{"text":"   鹰翎镇 - 菜单   ","color":"gold"},{"text":"鹰翎镇当前时间:  ","color":"yellow"},{"score":{"name":"#server","objective":"time_year"},"color":"light_purple"},{"text":"年","color":"aqua"},{"score":{"name":"#server","objective":"time_day"},"color":"light_purple"},{"text":"日 ","color":"aqua"},{"score":{"name":"#server","objective":"time_hour"},"color":"light_purple"},{"text":"时","color":"aqua"},{"score":{"name":"#server","objective":"time_minute"},"color":"light_purple"},{"text":"分","color":"aqua"},{"score":{"name":"#server","objective":"time_second"},"color":"light_purple"},{"text":"秒","color":"aqua"}]}
tellraw @s {"text":"","extra":[{"text":"  "},{"selector":"@s"},{"text":"  "},{"text":"修改称号","underlined":true,"color":"aqua","click_event":{"action":"run_command","command":"/trigger title set 1"}}]}

tellraw @s {"text":"","extra":[{"text":"","color":"dark_gray"}]}

tellraw @s {"text":"","extra":[{"text":"  灵魂等级: ","color":"#6af6ea"},{"text":"Lv.","color":"#8aa0b5"},{"score":{"name":"@s","objective":"soul_level"},"color":"#4dd9ff"},{"text":"  "},{"score":{"name":"@s","objective":"soul"},"color":"#ffe08a"},{"text":" / ","color":"#5f6875"},{"score":{"name":"@s","objective":"soul_require"},"color":"#c9d1d9"}]}

tellraw @s {"text":"","extra":[{"text":"  鹰翎币: ","color":"#f5d76e"},{"score":{"name":"@s","objective":"clawther_coin"},"color":"#fff1b8"},{"text":"  秘币: ","color":"#4dd9ff"},{"score":{"name":"@s","objective":"mystic_coin"},"color":"#fff1b8"},{"text":"  秘尘: ","color":"#4dd9ff"},{"score":{"name":"@s","objective":"mystic_dust"},"color":"#fff1b8"},{"text":"  "},{"text":"进入商店","underlined":true,"color":"aqua","click_event":{"action":"run_command","command":"/trigger shop set 1"}}]}


tellraw @s {"text":"","extra":[{"text":"","color":"dark_gray"}]}

function scr:right_click/operations/calculate_duration_clawther_coin_double
tellraw @s[scores={clawther_coin_double=1..}] {"text":"","extra":[{"text":"  [双倍鹰翎币] ","color":"yellow"},{"text":"加成: ","color":"green"},{"score":{"name":"@s","objective":"duration_hour_clawther_coin_double"},"color":"white"},{"text":"时","color":"white"},{"score":{"name":"@s","objective":"duration_minute_clawther_coin_double"},"color":"white"},{"text":"分","color":"white"},{"score":{"name":"@s","objective":"duration_second_clawther_coin_double"},"color":"white"},{"text":"秒","color":"white"}]}
function scr:right_click/operations/calculate_duration_soul_double
tellraw @s[scores={soul_double=1..}] {"text":"","extra":[{"text":"  [双倍灵魂] ","color":"yellow"},{"text":"加成: ","color":"green"},{"score":{"name":"@s","objective":"duration_hour_soul_double"},"color":"white"},{"text":"时","color":"white"},{"score":{"name":"@s","objective":"duration_minute_soul_double"},"color":"white"},{"text":"分","color":"white"},{"score":{"name":"@s","objective":"duration_second_soul_double"},"color":"white"},{"text":"秒","color":"white"}]}

tellraw @s {"text":"","extra":[{"text":"--------------------------------------------------","color":"dark_gray"}]}

scoreboard players set @s i 0