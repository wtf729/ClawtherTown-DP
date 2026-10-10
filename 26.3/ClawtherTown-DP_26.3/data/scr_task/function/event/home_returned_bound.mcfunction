function scr_task:event/formal_progress {id:"guardian/g_02",field:"returned"}
scoreboard players set #used_home scr_tk 0
execute store result score #used_home scr_tk run data get storage homes:storage players[-1].homes[-1].id
execute if score #used_home scr_tk matches 2.. run function scr_task:event/formal_progress {id:"guardian/g_03",field:"numbered_returned"}
