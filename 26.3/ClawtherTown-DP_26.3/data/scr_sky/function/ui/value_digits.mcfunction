$execute if score #ui_millions scr_sk matches 1.. if score #ui_units scr_sk matches 0..9 run data modify storage scr_sky:ui work.value_text set value "$(millions)00000$(units)"
$execute if score #ui_millions scr_sk matches 1.. if score #ui_units scr_sk matches 10..99 run data modify storage scr_sky:ui work.value_text set value "$(millions)0000$(units)"
$execute if score #ui_millions scr_sk matches 1.. if score #ui_units scr_sk matches 100..999 run data modify storage scr_sky:ui work.value_text set value "$(millions)000$(units)"
$execute if score #ui_millions scr_sk matches 1.. if score #ui_units scr_sk matches 1000..9999 run data modify storage scr_sky:ui work.value_text set value "$(millions)00$(units)"
$execute if score #ui_millions scr_sk matches 1.. if score #ui_units scr_sk matches 10000..99999 run data modify storage scr_sky:ui work.value_text set value "$(millions)0$(units)"
$execute if score #ui_millions scr_sk matches 1.. if score #ui_units scr_sk matches 100000..999999 run data modify storage scr_sky:ui work.value_text set value "$(millions)$(units)"
$execute if score #ui_millions scr_sk matches 0 run data modify storage scr_sky:ui work.value_text set value "$(units)"

data modify storage scr_sky:ui work.comma set value {suffix:""}
data modify storage scr_sky:ui work.comma.head set from storage scr_sky:ui work.value_text
function scr_sky:ui/value_group
function scr_sky:ui/value_join with storage scr_sky:ui work.comma
