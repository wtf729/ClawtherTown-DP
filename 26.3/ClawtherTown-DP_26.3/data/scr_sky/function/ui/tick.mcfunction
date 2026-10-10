execute as @a[scores={sky_action=-1}] run function scr_sky:ui/close
execute as @a[scores={is=1..}] at @s run function scr_sky:ui/quick_return
execute as @a[scores={sky=1..}] at @s run function scr_sky:ui/open
execute as @a[scores={sky_action=1..}] at @s run function scr_sky:ui/action
scoreboard players enable @a is
scoreboard players enable @a sky_action
