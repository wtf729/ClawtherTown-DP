# Keep source ownership and snapshots. Record the last component for any later failure.
scoreboard players set @s scr_pf_lock 1
execute if data storage scr_profile:runtime work.ctx.key run function scr_profile:storage/fault with storage scr_profile:runtime work.ctx
tellraw @s [{"text":"Profile 切换未完成，已锁定自动切换以保护快照。请联系管理员检查 scr_pf_phase 与 scr_profile:players。步骤：","color":"red"},{"nbt":"work.step","storage":"scr_profile:runtime"}]
return 0
