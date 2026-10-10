# Only the currently guarded/locked maintenance slab may be modified, including a verification retry.
execute unless dimension scr:sky run return 0
execute unless score #m_bounds scr_sk matches 1 run return 0
$execute unless data storage scr_sky:maintenance job{locked:1b,x:$(x),y:$(y),z:$(z),slab_height:64} run return 0
execute unless data storage scr_sky:maintenance job{phase:"clear"} unless data storage scr_sky:maintenance job{phase:"verify"} run return 0
$execute unless loaded $(x) $(y) $(z) run return 0
$execute unless loaded $(xe) $(ye) $(ze) run return 0
execute unless loaded -1048576 0 -1048576 run return 0
execute store result score #m_limit scr_sk run gamerule minecraft:max_block_modifications
execute unless score #m_limit scr_sk matches 16384.. run data modify storage scr_sky:maintenance job.error set value "slab_fill_limit_below_16384"
execute unless score #m_limit scr_sk matches 16384.. run return 0
$fill $(x) $(y) $(z) $(xe) $(ye) $(ze) minecraft:air strict
function scr_sky:scan/chunk/compare with storage scr_sky:runtime work.section
execute if score #empty scr_sk matches 1 run return 1
return 0
