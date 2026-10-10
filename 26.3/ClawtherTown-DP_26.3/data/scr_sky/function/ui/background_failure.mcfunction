# Presentation only: map the existing job error; unknown errors never reach player text.
data modify storage scr_sky:ui feedback_reason set value {"translate":"message.scr.sky.reason.background_unknown","fallback":"出现异常，请联系管理员。"}
execute if data storage scr_sky:jobs active{error:"placement_failed"} run data modify storage scr_sky:ui feedback_reason set value {"translate":"gui.scr.sky.error_placement_failed","fallback":"初始空岛未能建成，请联系管理员！"}
execute if data storage scr_sky:jobs active{error:"starter_spawn_unsafe"} run data modify storage scr_sky:ui feedback_reason set value {"translate":"gui.scr.sky.error_starter_spawn_unsafe","fallback":"初始出生点不安全，岛屿尚无法使用。请联系管理员！"}
execute if data storage scr_sky:jobs active{error:"reload_or_restart"} run data modify storage scr_sky:ui feedback_reason set value {"translate":"gui.scr.sky.error_reload_or_restart","fallback":"服务器重载或重启中断了操作，请联系管理员处理。"}
execute if data storage scr_sky:jobs active{error:"timeout_or_function_error"} run data modify storage scr_sky:ui feedback_reason set value {"translate":"gui.scr.sky.error_timeout_or_function_error","fallback":"操作超时或执行异常，请联系管理员检查。"}
execute if data storage scr_sky:jobs active{error:"admin_abort"} run data modify storage scr_sky:ui feedback_reason set value {"translate":"gui.scr.sky.error_admin_abort","fallback":"管理员已中止操作。"}
execute if data storage scr_sky:jobs active{error:"allocator_record_exists"} run data modify storage scr_sky:ui feedback_reason set value {"translate":"gui.scr.sky.error_allocator_record_exists","fallback":"创建空岛时出现异常，操作未完成。请联系管理员！"}
execute if data storage scr_sky:jobs active{error:"owner_exists_or_inconsistent"} run data modify storage scr_sky:ui feedback_reason set value {"translate":"gui.scr.sky.owner_exists_or_inconsistent","fallback":"无法完成操作：你或对方已有自己的空岛，或岛主信息异常。若与实际情况不符，请联系管理员！"}
execute if data storage scr_sky:jobs active{error:"starter_volume_not_empty_or_occupied"} run data modify storage scr_sky:ui feedback_reason set value {"translate":"gui.scr.sky.error_starter_volume_not_empty_or_occupied","fallback":"模板区域有方块或玩家，未覆盖现有内容。"}
tellraw @s {"translate":"message.scr.sky.ui.background_failed","fallback":"空岛操作未完成：%s","color":"red","with":[{"nbt":"feedback_reason","storage":"scr_sky:ui","interpret":true}]}
data remove storage scr_sky:ui feedback_reason
