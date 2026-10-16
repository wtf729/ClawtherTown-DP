execute if data storage scr_tower:runtime route{op:"start"} if score #active scr_tw matches 1 run return run function scr_tower:ui/disabled
execute if data storage scr_tower:runtime route{op:"start"} unless score #allowed scr_tw matches 1 run return run function scr_tower:ui/disabled
execute if data storage scr_tower:runtime route{op:"start"} unless score #clock scr_tw matches 1 run return run function scr_tower:ui/disabled
execute if data storage scr_tower:runtime route{op:"start"} unless score #left scr_tw matches 1.. run return run function scr_tower:ui/disabled
execute if data storage scr_tower:runtime route{op:"waiver"} unless data storage scr_tower:runtime p.run{waiver:1} run return run function scr_tower:ui/disabled
execute if data storage scr_tower:runtime route{op:"pay"} run function scr_tower:ui/pay_check
execute if data storage scr_tower:runtime route{op:"pay"} unless score #can_pay scr_tw matches 1 run return run function scr_tower:ui/disabled
execute store result score #issued scr_tw run function scr_tower:ui/issue
execute unless score #issued scr_tw matches 1 run return run function scr_tower:ui/disabled
data modify storage scr_tower:runtime dialog.actions append from storage scr_tower:runtime button
return 1
