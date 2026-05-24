scoreboard players remove @s case_opening_fast_remain 1
scoreboard players set @s case_opening_time 52
execute as @s[scores={case_opening_fast_remain=0}] run function scr:case/tellraw/case_open_fast_end
execute as @s[scores={case_opening_fast_remain=0}] run function scr:case/open/reset