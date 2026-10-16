# Current-floor color deliberately overrides completed: reward feedback stays green.
data modify storage scr_tower:runtime progress.segment set value {text:"|",color:"#808080"}
# Future jackpot floors are #ababab; other future floors are #808080; completed/current-floor colors keep priority.
scoreboard players operation #ui_bar_mod scr_tw = #ui_bar_index scr_tw
scoreboard players operation #ui_bar_mod scr_tw %= #ui_bar_five scr_tw
execute if score #ui_bar_index scr_tw > #ui_bar_floor scr_tw if score #ui_bar_mod scr_tw matches 0 run data modify storage scr_tower:runtime progress.segment.color set value "#ababab"
execute if score #ui_bar_index scr_tw <= #ui_bar_done scr_tw run data modify storage scr_tower:runtime progress.segment.color set value "aqua"
execute if score #ui_bar_index scr_tw = #ui_bar_floor scr_tw run data modify storage scr_tower:runtime progress.segment set from storage scr_tower:runtime progress.current
data modify storage scr_tower:runtime progress.component.extra append from storage scr_tower:runtime progress.segment
scoreboard players add #ui_bar_index scr_tw 1
execute if score #ui_bar_index scr_tw matches ..60 run function scr_tower:ui/progress_step
