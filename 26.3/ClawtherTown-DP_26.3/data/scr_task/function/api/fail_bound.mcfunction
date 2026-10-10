$execute store result score #selected scr_tk run function scr_task:core/select {id:"$(id)"}
execute unless score #selected scr_tk matches 1 run return 0
return run function scr_task:core/lifecycle/fail
