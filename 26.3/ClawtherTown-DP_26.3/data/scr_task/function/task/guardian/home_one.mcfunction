$scoreboard players set #home_id scr_tk $(id)
execute if score #home_id scr_tk matches 1.. run function scr_task:event/formal_progress {id:"guardian/g_02",field:"home_set"}
return 1
