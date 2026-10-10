$data modify storage scr_sky:players players."$(key)".last_operation set from storage scr_sky:jobs active
$execute as @a[nbt={UUID:$(uuid)}] unless data storage scr_sky:jobs active{kind:"travel"} unless data storage scr_sky:jobs active{kind:"claim"} unless data storage scr_sky:jobs active{kind:"transfer"} run tellraw @s {"translate":"message.scr.sky.operation_finished","fallback":"空岛操作已处理，请打开空岛面板查看结果。","color":"white"}
$execute as @a[nbt={UUID:$(uuid)}] if data storage scr_sky:jobs active{kind:"travel",outcome:"recovery"} run tellraw @s {"translate":"message.scr.sky.travel_failed","fallback":"无法安全传送，请检查岛屿、权限与出生点。","color":"red"}
$execute as @a[nbt={UUID:$(uuid)}] at @s if data storage scr_sky:jobs active{outcome:"claimed"} run function scr_task:event/sky_updated
$execute as @a[nbt={UUID:$(uuid)}] if data storage scr_sky:jobs active{kind:"claim",outcome:"claimed"} run tellraw @s {"translate":"message.scr.sky.ui.claimed","fallback":"空岛已创建。","color":"green"}
$execute as @a[nbt={UUID:$(uuid)}] if data storage scr_sky:jobs active{kind:"transfer",outcome:"transferred"} run tellraw @s {"translate":"message.scr.sky.ui.transferred","fallback":"岛主已转让，权限已更新。","color":"green"}
$execute as @a[nbt={UUID:$(uuid)}] unless data storage scr_sky:jobs active{kind:"travel"} if data storage scr_sky:jobs active{outcome:"recovery"} run function scr_sky:ui/background_failure
