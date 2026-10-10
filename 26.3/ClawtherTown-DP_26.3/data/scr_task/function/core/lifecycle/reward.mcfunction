# Called only by submit, before state 4. Preserve this marker through the state commit.
execute store result score #marked scr_tk run function scr_task:core/lifecycle/reward_mark with storage scr_task:runtime work.ctx
execute unless score #marked scr_tk matches 1 run return 0
execute store result score #hook scr_tk run function scr_task:core/hook {hook:"reward"}
return run scoreboard players get #hook scr_tk
