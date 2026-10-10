# The outer caller always releases this synchronous global scratch context.
scoreboard players set #busy scr_pf_lock 1
data modify storage scr_profile:runtime work set value {ctx:{},sample:{},target:{}}
data modify storage scr_profile:runtime work.ctx.u0 set from entity @s UUID[0]
data modify storage scr_profile:runtime work.ctx.u1 set from entity @s UUID[1]
data modify storage scr_profile:runtime work.ctx.u2 set from entity @s UUID[2]
data modify storage scr_profile:runtime work.ctx.u3 set from entity @s UUID[3]
execute unless data storage scr_profile:runtime work.ctx.u3 run return 0
function scr_profile:context/key with storage scr_profile:runtime work.ctx
execute store result storage scr_profile:runtime work.ctx.from int 1 run scoreboard players get @s scr_pf_cur
execute store result storage scr_profile:runtime work.ctx.to int 1 run scoreboard players get @s scr_pf_target
return 1
