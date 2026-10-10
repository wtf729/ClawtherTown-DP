# ADMIN: /execute as <player> at @s run function scr_profile:recovery/retry_before_clear
# Only cancel an initialized player's verified pre-clear transaction. NEVER restore stale inventory.
execute unless entity @s[type=minecraft:player] run return 0
execute unless score @s scr_pf_lock matches 1 run return 0
execute unless score @s scr_pf_init matches 1 run return 0
execute unless score @s scr_pf_phase matches 1..2 run return 0
execute if score #busy scr_pf_lock matches 1 run return 0
execute store result score @s scr_pf_ok run function scr_profile:context/open
execute if score @s scr_pf_ok matches 1 run execute store result score @s scr_pf_ok run function scr_profile:recovery/retry_bound with storage scr_profile:runtime work.ctx
function scr_profile:context/release
execute unless score @s scr_pf_ok matches 1 run tellraw @s {"text":"Profile 恢复被拒绝：记录未能证明事务尚未清空数据；锁与快照已保留。","color":"red"}
execute if score @s scr_pf_ok matches 1 run tellraw @s {"text":"已撤销尚未清空数据的失败事务。保留当前背包与所有快照；后续 tick 将按当前维度重新保存并切换。","color":"green"}
