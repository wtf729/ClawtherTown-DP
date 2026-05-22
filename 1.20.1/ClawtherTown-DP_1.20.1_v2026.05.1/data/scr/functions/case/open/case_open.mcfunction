scoreboard players add @s case_opening_time 1
execute as @s[scores={case_opening_time=53..}] run scoreboard players add @s case_opening_time_click 1
execute as @s[scores={case_opening_time=56..}] run scoreboard players add @s case_opening_time_draw 1



execute as @s[scores={case_opening_time=1}] run playsound scr:ui.cs_case_open ambient @s ~ ~ ~
execute as @s[scores={case_opening_time=1}] run scoreboard players set @s cd_case 240
execute as @s[scores={case_opening_time=1..52,case_opening_case=1}] run function scr:case/actionbar/clawther_case/open
execute as @s[scores={case_opening_time=1..52,case_opening_case=2}] run function scr:case/actionbar/special_item_i/open
execute as @s[scores={case_opening_time=1..52,case_opening_case=3}] run function scr:case/actionbar/deepwater_case/open
execute as @s[scores={case_opening_time=1..52,case_opening_case=4}] run function scr:case/actionbar/dream_wing/open
execute as @s[scores={case_opening_time=1..52,case_opening_case=6}] run function scr:case/actionbar/rare_ore/open



execute as @s[scores={case_opening_time=53..80,case_opening_time_click=1..}] run function scr:case/open/click
execute as @s[scores={case_opening_time=81..110,case_opening_time_click=2..}] run function scr:case/open/click
execute as @s[scores={case_opening_time=111..140,case_opening_time_click=3..}] run function scr:case/open/click
execute as @s[scores={case_opening_time=141..160,case_opening_time_click=4..}] run function scr:case/open/click
execute as @s[scores={case_opening_time=161..180,case_opening_time_click=6..}] run function scr:case/open/click
execute as @s[scores={case_opening_time=181..200,case_opening_time_click=8..}] run function scr:case/open/click
execute as @s[scores={case_opening_time=201..220,case_opening_time_click=12..}] run function scr:case/open/click


execute as @s[scores={case_opening_time=56..83,case_opening_time_draw=1..}] run function scr:case/open/draw
execute as @s[scores={case_opening_time=84..113,case_opening_time_draw=2..}] run function scr:case/open/draw
execute as @s[scores={case_opening_time=114..143,case_opening_time_draw=3..}] run function scr:case/open/draw
execute as @s[scores={case_opening_time=144..163,case_opening_time_draw=4..}] run function scr:case/open/draw
execute as @s[scores={case_opening_time=164..183,case_opening_time_draw=6..}] run function scr:case/open/draw
execute as @s[scores={case_opening_time=184..203,case_opening_time_draw=8..}] run function scr:case/open/draw
execute as @s[scores={case_opening_time=204..223,case_opening_time_draw=12..}] run function scr:case/open/draw

execute as @s[scores={case_opening_time=240,case_opening_case=1}] run function scr:case/open/end/clawther_case
execute as @s[scores={case_opening_time=240,case_opening_case=2}] run function scr:case/open/end/special_item_i
execute as @s[scores={case_opening_time=240,case_opening_case=3}] run function scr:case/open/end/deepwater_case
execute as @s[scores={case_opening_time=240,case_opening_case=4}] run function scr:case/open/end/dream_wing
execute as @s[scores={case_opening_time=240,case_opening_case=6}] run function scr:case/open/end/rare_ore


execute as @s[scores={case_opening_time=240..}] run function scr:case/open/reset




#temp
#execute as @s[scores={case_opening_time=228,case_opening_case=2}] run scoreboard players set @s case_opening_luck 1
#execute as @s[scores={case_opening_time=228}] run scoreboard players set #random100000 scr_random 1
#execute as @s[scores={case_opening_time=239}] run scoreboard players set @s case_opening_luck 270