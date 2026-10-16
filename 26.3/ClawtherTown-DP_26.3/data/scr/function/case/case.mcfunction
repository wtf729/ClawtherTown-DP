# One tick per active opening; the shop-only gate freezes the entire animation/wait/payout.
execute as @a[scores={case_opening=1}] at @s run function scr:case/tick
execute as @a[scores={case_opening_fast=1}] at @s run function scr:case/tick
