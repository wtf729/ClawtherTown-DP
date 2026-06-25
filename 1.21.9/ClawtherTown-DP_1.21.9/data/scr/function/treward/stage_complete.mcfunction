scoreboard players add #treward_stage treward 1
scoreboard players set #treward_timecounter treward 0

scoreboard players add @a treward_mark 1

execute as @a at @s if score @s treward_mark matches ..8 run playsound minecraft:block.note_block.bell ambient @s ~ ~ ~

execute as @a at @s run scoreboard players add @s dream_wing 1

tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"所有人获得了在线奖励 ","color":"#c9d1d9"},{"text":"[幻梦翎片]","color":"#7dff9a","bold":false},{"text":" ! ","color":"#c9d1d9"},{"text":"跳转至开箱界面","underlined":true,"color":"#4dd9ff","click_event":{"action":"run_command","command":"/trigger shop set 100099"}}]}
execute as @a at @s run tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"当前为 ","color":"#c9d1d9"},{"text":"第 ","color":"#6af6ea"},{"score":{"name":"#treward_cycle","objective":"treward"},"color":"#ffe08a"},{"text":" 周期","color":"#6af6ea"},{"text":" 第 ","color":"#6af6ea"},{"score":{"name":"#treward_stage","objective":"treward"},"color":"#ffe08a"},{"text":"/","color":"#8aa0b5"},{"text":"9","color":"#ffb347"},{"text":" 次 ","color":"#6af6ea"},{"text":"奖励邮递! ","color":"#c9d1d9"},{"text":"本周期你参加了","color":"#c9d1d9"},{"score":{"name":"@s","objective":"treward_mark"},"color":"#ffe08a"},{"text":"次!","color":"#c9d1d9"}]}
tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"我会在","color":"#c9d1d9"},{"text":"10分钟","color":"#ffb347"},{"text":"后再与你们相见!","color":"#c9d1d9"}]}

execute as @a at @s run scoreboard players add @s soul_add 20
execute as @a at @s run function scr:soul/reward
tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"#6af6ea"},{"text":"[灵魂]*20","color":"#6af6ea"},{"text":" !","color":"#6af6ea"}]}

execute if score #treward_stage treward matches 9.. run function scr:treward/stage_end