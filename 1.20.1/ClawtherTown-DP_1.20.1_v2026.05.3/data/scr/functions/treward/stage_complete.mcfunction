scoreboard players add #treward treward_stage 1
scoreboard players set #treward timecounter 0

scoreboard players add @a treward_mark 1

execute as @a at @s if score @s treward_mark matches ..8 run playsound minecraft:block.note_block.bell ambient @s ~ ~ ~

execute as @a at @s run scoreboard players add @s dream_wing 1

tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"所有人获得了在线奖励 ","color":"#e5e6a7"},{"text":"[幻梦翎片]","color":"green","bold":false},{"text":" ! ","color":"#e5e6a7"},{"text":"跳转至开箱界面","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger shop set 100099"}}]}
execute as @a at @s run tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"当前为 ","color":"#e5e6a7"},{"text":"第 ","color":"#1ddddd"},{"score":{"name":"#treward","objective":"treward_cycle"},"color":"#e5e6a7"},{"text":" 周期","color":"#1ddddd"},{"text":" 第 ","color":"#1ddddd"},{"score":{"name":"#treward","objective":"treward_stage"},"color":"#e5e6a7"},{"text":"/","color":"#1ddddd"},{"text":"9","color":"gold"},{"text":" 次 ","color":"#1ddddd"},{"text":"奖励邮递! ","color":"#e5e6a7"},{"text":"本周期你参加了","color":"#e5e6a7"},{"score":{"name":"@s","objective":"treward_mark"},"color":"gold"},{"text":"次!","color":"#e5e6a7"}]}
tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"我会在","color":"#e5e6a7"},{"text":"10分钟","color":"gold"},{"text":"后再与你们相见!","color":"#e5e6a7"}]}

execute as @a at @s run scoreboard players add @s soul_add 20
execute as @a at @s run function scr:soul/reward
tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"邮递鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"你收到了一份礼物: ","color":"aqua"},{"text":"[灵魂]*20","color":"aqua"},{"text":" !","color":"aqua"}]}

execute if score #treward treward_stage matches 9.. run function scr:treward/stage_end