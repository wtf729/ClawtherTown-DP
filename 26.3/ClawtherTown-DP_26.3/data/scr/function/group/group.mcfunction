
execute as @a[scores={clawther_coin_double=1}] at @s run function scr:group/clawther_coin_double/expire
execute as @a[scores={soul_double=1}] at @s run function scr:group/soul_double/expire

scoreboard players remove @a[scores={clawther_coin_double=1..}] clawther_coin_double 1
scoreboard players remove @a[scores={soul_double=1..}] soul_double 1
