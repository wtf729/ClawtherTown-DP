execute as @s[predicate=scr:right_click/mainhand/carrot_on_a_stick] at @s run function scr:right_click/use_main
execute as @s[predicate=scr:right_click/offhand/carrot_on_a_stick] at @s run function scr:right_click/use_off
scoreboard players reset @s scr_right_click