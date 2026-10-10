execute store result score #watch scr_sk run data get storage scr_sky:scan job.wait 1
scoreboard players add #watch scr_sk 1
execute store result storage scr_sky:scan job.wait int 1 run scoreboard players get #watch scr_sk
execute store result score #timeout scr_sk run data get storage scr_sky:scan job.timeout 1
execute if score #watch scr_sk > #timeout scr_sk unless data storage scr_sky:scan job{phase:"abort"} run data modify storage scr_sky:scan job.error set value "phase_timeout_or_function_error"
execute if score #watch scr_sk > #timeout scr_sk run data modify storage scr_sky:scan job.phase set value "abort"
execute unless score #config_ok scr_sk matches 1 run data modify storage scr_sky:scan job.phase set value "abort"
execute store result score #block_limit scr_sk run gamerule minecraft:max_block_modifications
execute unless score #block_limit scr_sk matches 16384.. run data modify storage scr_sky:scan job.error set value "block_modification_limit_too_low"
execute unless score #block_limit scr_sk matches 16384.. run data modify storage scr_sky:scan job.phase set value "abort"
execute in scr_sky:scanner if entity @a[distance=0..] run data modify storage scr_sky:scan job.error set value "player_in_technical_dimension"
execute in scr_sky:scanner if entity @a[distance=0..] run data modify storage scr_sky:scan job.phase set value "abort"
function scr_sky:scan/dispatch
