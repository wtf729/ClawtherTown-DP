$data modify storage scr_sky:ui work.value_ctx set value {millions:$(millions),units:$(units)}

execute store result score #ui_millions scr_sk run data get storage scr_sky:ui work.value_ctx.millions
execute store result score #ui_units scr_sk run data get storage scr_sky:ui work.value_ctx.units
function scr_sky:ui/value_digits with storage scr_sky:ui work.value_ctx
