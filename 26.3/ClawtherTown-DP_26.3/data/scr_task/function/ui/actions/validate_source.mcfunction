data modify storage scr_task:runtime work.nav set from storage scr_task:runtime ui_request
execute store result score #selected scr_tk run function scr_task:ui/navigation/detail_source
execute unless score #selected scr_tk matches 1 run data modify storage scr_task:runtime ui_request set from storage scr_task:runtime work.route
