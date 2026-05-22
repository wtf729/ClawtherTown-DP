execute as @a[scores={case_opening=1}] at @s run function scr:case/open/case_open

execute as @a[scores={case_opening_fast=1,case_opening_fast_remain=1..,case_opening_fast_wait=0}] at @s run function scr:case/open/case_open_fast
execute as @a[scores={case_opening_fast_wait=1..}] run scoreboard players remove @s case_opening_fast_wait 1
execute as @a[scores={case_opening_fast_wait=1..}] run function scr:case/open/show/show