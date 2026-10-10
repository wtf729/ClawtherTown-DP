execute if entity @s[advancements={scr:teleport_cookie_crafted=true}] run function scr_task:event/formal_progress {"id":"guardian/g_04","field":"teleport_cookie"}
execute if entity @s[advancements={scr:soul_cookie_crafted=true}] run function scr_task:event/formal_progress {"id":"guardian/g_04","field":"soul_cookie"}
return 1
