scoreboard players operation #home_id scr_tk = #home homes.dummy
execute if score #home_id scr_tk matches 1.. run function scr_task:event/formal_progress {id:"guardian/g_02",field:"home_set"}
execute if score #home_id scr_tk matches 2.. run function scr_task:event/formal_progress {id:"guardian/g_03",field:"numbered_set"}
