# Decimal formatting uses strings, never a combined overflowing scoreboard.
$execute if data storage scr_sky:level notice.island.value{millions:0} run data modify storage scr_sky:level notice.value set value "$(units)"
execute store result score #lv_print_m scr_sk run data get storage scr_sky:level notice.island.value.millions
execute store result score #lv_print_u scr_sk run data get storage scr_sky:level notice.island.value.units
$execute if score #lv_print_m scr_sk matches 1.. if score #lv_print_u scr_sk matches 0..9 run data modify storage scr_sky:level notice.value set value "$(millions)00000$(units)"
$execute if score #lv_print_m scr_sk matches 1.. if score #lv_print_u scr_sk matches 10..99 run data modify storage scr_sky:level notice.value set value "$(millions)0000$(units)"
$execute if score #lv_print_m scr_sk matches 1.. if score #lv_print_u scr_sk matches 100..999 run data modify storage scr_sky:level notice.value set value "$(millions)000$(units)"
$execute if score #lv_print_m scr_sk matches 1.. if score #lv_print_u scr_sk matches 1000..9999 run data modify storage scr_sky:level notice.value set value "$(millions)00$(units)"
$execute if score #lv_print_m scr_sk matches 1.. if score #lv_print_u scr_sk matches 10000..99999 run data modify storage scr_sky:level notice.value set value "$(millions)0$(units)"
$execute if score #lv_print_m scr_sk matches 1.. if score #lv_print_u scr_sk matches 100000..999999 run data modify storage scr_sky:level notice.value set value "$(millions)$(units)"
