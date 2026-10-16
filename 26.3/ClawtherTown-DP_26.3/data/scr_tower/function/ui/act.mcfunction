execute if data storage scr_tower:runtime route{op:"home"} run return run function scr_tower:ui/nav/home
execute if data storage scr_tower:runtime route{op:"resume"} run return run function scr_tower:ui/nav/resume
execute if data storage scr_tower:runtime route{op:"pending"} run return run function scr_tower:ui/nav/pending
execute if data storage scr_tower:runtime route{op:"page"} run return run function scr_tower:ui/nav/page
execute if data storage scr_tower:runtime route{op:"pending_back"} run return run function scr_tower:ui/nav/back
execute if data storage scr_tower:runtime route{op:"start"} run return run function scr_tower:ui/nav/start
execute if data storage scr_tower:runtime route{op:"start_confirm"} run return run function scr_tower:ui/nav/start_confirm
execute store result score #ok scr_tw run function scr_tower:guard
execute unless score #ok scr_tw matches 1 run return 0
execute if data storage scr_tower:runtime route{op:"pick"} run return run function scr_tower:pick
execute if data storage scr_tower:runtime route{op:"pay"} run return run function scr_tower:continue/pay
execute if data storage scr_tower:runtime route{op:"waiver"} run return run function scr_tower:continue/waiver
execute if data storage scr_tower:runtime route{op:"abandon"} run return run function scr_tower:ui/nav/abandon
execute if data storage scr_tower:runtime route{op:"abandon_cancel"} run return run function scr_tower:ui/nav/abandon_cancel
execute if data storage scr_tower:runtime route{op:"abandon_confirm"} run return run function scr_tower:ui/nav/abandon_confirm
execute if data storage scr_tower:runtime route{op:"next"} run return run function scr_tower:next
execute if data storage scr_tower:runtime route{op:"exit"} run return run function scr_tower:ui/nav/exit
execute if data storage scr_tower:runtime route{op:"exit_cancel"} run return run function scr_tower:ui/nav/exit_cancel
execute if data storage scr_tower:runtime route{op:"exit_confirm"} run return run function scr_tower:ui/nav/exit_confirm
execute if data storage scr_tower:runtime route{op:"retry"} run return run function scr_tower:mail/retry
