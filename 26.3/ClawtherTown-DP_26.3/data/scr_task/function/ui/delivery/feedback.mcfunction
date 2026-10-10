execute if data storage scr_task:runtime work.delivery_result{reason:"success"} run tellraw @s {"translate":"message.scr.task.delivery.success","fallback":"材料已交付！","color":"green"}
execute if data storage scr_task:runtime work.delivery_result{reason:"invalid"} run tellraw @s {"translate":"message.scr.task.delivery.invalid","fallback":"这项目标暂时无法交付，请重新打开任务页面。","color":"red"}
execute if data storage scr_task:runtime work.delivery_result{reason:"region"} run tellraw @s {"translate":"message.scr.task.delivery.region","fallback":"请在任务要求的区域，背包切换完成后交付。","color":"red"}
execute if data storage scr_task:runtime work.delivery_result{reason:"recovery"} run tellraw @s {"translate":"message.scr.task.delivery.recovery","fallback":"这次交付需要管理员核查，请勿重复交付。","color":"red"}
execute if data storage scr_task:runtime work.delivery_result{reason:"done"} run tellraw @s {"translate":"message.scr.task.delivery.done","fallback":"这项目标已经交付，无需再次提交。","color":"red"}
execute if data storage scr_task:runtime work.delivery_result{reason:"insufficient"} run tellraw @s {"translate":"message.scr.task.delivery.insufficient","fallback":"材料不足，未扣除物品。","color":"red"}
