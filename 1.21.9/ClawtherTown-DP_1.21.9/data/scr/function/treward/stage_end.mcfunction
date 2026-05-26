execute as @a if score @s treward_mark matches 9.. run scoreboard players set #treward treward_fa 1
execute if score #treward treward_fa matches 1 run tellraw @a {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"考勤鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"selector":"@a[scores={treward_mark=9..}]"},{"text":"额外获得了全勤奖 ","color":"red"},{"text":"[幻梦翎片]*5","color":"green","bold":false},{"text":" !","color":"red"}]}

execute as @a at @s if score @s treward_mark matches 9.. run playsound minecraft:block.note_block.bell ambient @s ~ ~ ~ 1 2
execute as @a at @s if score @s treward_mark matches 9.. as @s run scoreboard players add @s dream_wing 5

scoreboard objectives remove treward_mark
scoreboard objectives add treward_mark dummy
scoreboard players set #treward treward_fa 0
scoreboard players add #treward treward_cycle 1
scoreboard players set #treward treward_stage -1