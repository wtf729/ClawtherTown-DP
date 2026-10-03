scoreboard players add @s case_opening_time 1
scoreboard players set @s cd_case 200

execute as @s[scores={case_opening_time=1}] run playsound scr:ui.cs_case_open ambient @s ~ ~ ~
execute as @s[scores={case_opening_time=1}] run execute store result score @s case_opening_fast_total run scoreboard players get @s case_opening_fast_remain

execute as @s[scores={case_opening_time=1..52,case_opening_case=1}] run function scr:case/actionbar/clawther_case/open
execute as @s[scores={case_opening_time=1..52,case_opening_case=2}] run function scr:case/actionbar/special_item_i/open
execute as @s[scores={case_opening_time=1..52,case_opening_case=3}] run function scr:case/actionbar/deepwater_case/open
execute as @s[scores={case_opening_time=1..52,case_opening_case=4}] run function scr:case/actionbar/dream_wing/open
execute as @s[scores={case_opening_time=1..52,case_opening_case=5}] run function scr:case/actionbar/special_item_ii/open


execute as @s[scores={case_opening_time=53}] run function scr:case/open/click


execute as @s[scores={case_opening_time=56}] run function scr:case/open/draw


execute as @s[scores={case_opening_time=56}] run function scr:case/open/case/fast/wait/wait


execute as @s[scores={case_opening_time=56,case_opening_case=1}] run function scr:case/open/end/clawther_case
execute as @s[scores={case_opening_time=56,case_opening_case=2}] run function scr:case/open/end/special_item_i
execute as @s[scores={case_opening_time=56,case_opening_case=3}] run function scr:case/open/end/deepwater_case
execute as @s[scores={case_opening_time=56,case_opening_case=4}] run function scr:case/open/end/dream_wing
execute as @s[scores={case_opening_time=56,case_opening_case=5}] run function scr:case/open/end/special_item_ii
execute as @s[scores={case_opening_time=56}] run function scr:case/open/end/fast