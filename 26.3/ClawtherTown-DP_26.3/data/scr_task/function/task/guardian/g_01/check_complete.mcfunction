data modify storage scr_task:runtime work.ctx.field set value "menu"
execute store result score #formal_value scr_tk run function scr_task:core/progress/read with storage scr_task:runtime work.ctx
execute unless score #formal_value scr_tk matches 1.. run return 0
data modify storage scr_task:runtime work.ctx.field set value "help"
execute store result score #formal_value scr_tk run function scr_task:core/progress/read with storage scr_task:runtime work.ctx
execute unless score #formal_value scr_tk matches 1.. run return 0
return 1
