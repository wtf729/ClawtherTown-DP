function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 1..3 run data modify storage scr_sky:runtime result.reason set value "permission"
execute if score #role scr_sk matches 3 run data modify storage scr_sky:runtime result.reason set value "owner_leave"
execute unless score #role scr_sk matches 1..2 run return 0
data modify storage scr_sky:runtime work.ctx.target set from storage scr_sky:runtime work.ctx.key
data modify storage scr_sky:runtime work.ctx.role set value 0
scoreboard players set #newrole scr_sk 0
# Self-leave is separately authorized; reuse index/repair writer without granting admin rights.
function scr_sky:membership/remove_self with storage scr_sky:runtime work.ctx
