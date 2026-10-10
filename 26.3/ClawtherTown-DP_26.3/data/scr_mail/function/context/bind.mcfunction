execute unless entity @s[type=minecraft:player] run return 0
data modify storage scr_mail:runtime work set value {ctx:{},scratch:{}}
data modify storage scr_mail:runtime work.ctx.u0 set from entity @s UUID[0]
data modify storage scr_mail:runtime work.ctx.u1 set from entity @s UUID[1]
data modify storage scr_mail:runtime work.ctx.u2 set from entity @s UUID[2]
data modify storage scr_mail:runtime work.ctx.u3 set from entity @s UUID[3]
execute unless data storage scr_mail:runtime work.ctx.u3 run return 0
function scr_mail:context/key with storage scr_mail:runtime work.ctx
return run function scr_mail:context/ensure with storage scr_mail:runtime work.ctx
