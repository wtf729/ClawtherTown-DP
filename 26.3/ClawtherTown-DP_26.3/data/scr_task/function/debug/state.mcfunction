$execute store result score #debug_state scr_tk run function scr_task:api/read {id:"$(id)"}
tellraw @s [{text:"Task record: ",color:"gold"},{nbt:"result",storage:"scr_task:runtime",color:"white"}]
return run scoreboard players get #debug_state scr_tk
