data modify storage scr_mail:runtime work.title_label set value {"text":"","color":"gold"}
data modify storage scr_mail:runtime work.title_label.text set from storage scr_mail:runtime work.mail.title
execute if data storage scr_mail:runtime work.mail{title:"签到奖励"} run data modify storage scr_mail:runtime work.title_label set value {"translate":"gui.scr.mail.category.signin_reward","fallback":"签到奖励","color":"gold"}
execute if data storage scr_mail:runtime work.mail{title:"系统邮件"} run data modify storage scr_mail:runtime work.title_label set value {"translate":"gui.scr.mail.category.system","fallback":"系统邮件","color":"gold"}
execute if data storage scr_mail:runtime work.mail{title:"任务奖励"} run data modify storage scr_mail:runtime work.title_label set value {"translate":"gui.scr.mail.category.task","fallback":"任务奖励","color":"gold"}
execute if data storage scr_mail:runtime work.mail{title:"活动奖励"} run data modify storage scr_mail:runtime work.title_label set value {"translate":"gui.scr.mail.category.event","fallback":"活动奖励","color":"gold"}
execute if data storage scr_mail:runtime work.mail{title:"补偿奖励"} run data modify storage scr_mail:runtime work.title_label set value {"translate":"gui.scr.mail.category.compensation","fallback":"补偿奖励","color":"gold"}
execute if data storage scr_mail:runtime work.mail{"title":"邮箱综合奖励测试"} run data modify storage scr_mail:runtime work.title_label set value {"translate":"gui.scr.mail.category.test","fallback":"邮箱奖励测试","color":"gold"}
execute if data storage scr_mail:runtime work.mail{"title":"邮箱奖励测试"} run data modify storage scr_mail:runtime work.title_label set value {"translate":"gui.scr.mail.category.test","fallback":"邮箱奖励测试","color":"gold"}
execute if data storage scr_mail:runtime work.mail{title:"新人礼"} run data modify storage scr_mail:runtime work.title_label set value {"translate":"gui.scr.mail.category.newcomer","fallback":"新人礼","color":"gold"}
execute if data storage scr_mail:runtime work.mail{title:"升级奖励"} run data modify storage scr_mail:runtime work.title_label set value {"translate":"gui.scr.mail.category.level_up","fallback":"升级奖励","color":"gold"}
execute if data storage scr_mail:runtime work.mail{title:"回归奖励"} run data modify storage scr_mail:runtime work.title_label set value {"translate":"gui.scr.mail.category.return","fallback":"回归奖励","color":"gold"}
execute if data storage scr_mail:runtime work.mail{title:"生日礼物"} run data modify storage scr_mail:runtime work.title_label set value {"translate":"gui.scr.mail.category.birthday","fallback":"生日礼物","color":"gold"}
execute if data storage scr_mail:runtime work.mail{title:"任务新人礼"} run data modify storage scr_mail:runtime work.title_label set value {"translate":"gui.scr.mail.category.task_newcomer","fallback":"驿站来信 · 新人礼","color":"gold"}


function scr_mail:ui/format/task_title

execute if data storage scr_mail:runtime work.mail{source:"scr_tower/main"} run data modify storage scr_mail:runtime work.title_label set value {translate:"gui.scr.tower.mail_main",color:"gold"}
execute if data storage scr_mail:runtime work.mail{source:"scr_tower/sky"} run data modify storage scr_mail:runtime work.title_label set value {translate:"gui.scr.tower.mail_sky",color:"gold"}
