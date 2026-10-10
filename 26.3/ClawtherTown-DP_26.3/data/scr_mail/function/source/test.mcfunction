# 管理员手动调用的综合测试来源；不接入 load、tick 或签到。
# 玩家执行：/function scr_mail:source/test
# 控制台执行：execute as <玩家名> at @s run function scr_mail:source/test
# 每次成功调用创建一封新邮件；/trigger mail 查看，Main 区域领取。
# 领取后会实际增加物品、货币并解锁称号/标签/进度，不是无副作用的预览。
# Reward Entry 只填写 handler + parameters；状态与领取记录由邮箱引擎维护。
execute unless entity @s[type=minecraft:player] run return 0
# 在改写共享 request 之前检查锁，避免嵌套调用污染正在执行的邮件事务。
execute if score #busy scr_ml_lock matches 1 run return 0
data modify storage scr_mail:request mail set value {"title":"邮箱综合奖励测试","source":"test","claim_profile":"main","event_id":"","rewards":[]}

# loot：现有白名单战利品表，由邮箱准备流程生成并保存物品，领取时不重新随机。
data modify storage scr_mail:request mail.rewards append value {"handler":"loot","parameters":{"table":"scr:case/case/case_rare_ore"}}

# item：固定物品，3 个钻石。
data modify storage scr_mail:request mail.rewards append value {"handler":"item","parameters":{"stack":{"id":"minecraft:diamond","count":3}}}

# scoreboard add：鹰翎币增加 100。
data modify storage scr_mail:request mail.rewards append value {"handler":"scoreboard","parameters":{"objective":"clawther_coin","operation":"add","value":100}}

# scoreboard set：解锁特殊称号 4，不自动佩戴。
data modify storage scr_mail:request mail.rewards append value {"handler":"scoreboard","parameters":{"objective":"title_special_4","operation":"set","value":1}}

# function：调用已获准的阶段 2 称号接口，已有更高阶段时不会降级。不可在同一封邮件再添加 stage 计分板奖励。
data modify storage scr_mail:request mail.rewards append value {"handler":"function","parameters":{"id":"scr_mail:unlock/title_stage_2"}}

# tag：添加现有白名单解锁标签。
data modify storage scr_mail:request mail.rewards append value {"handler":"tag","parameters":{"name":"scr.mail_unlocked","operation":"add"}}

# advancement：授予现有隐藏解锁进度。
data modify storage scr_mail:request mail.rewards append value {"handler":"advancement","parameters":{"id":"scr_mail:reward/unlocked","operation":"grant"}}

# 自动生成独立 event_id，不使用固定测试事件键，以便反复创建测试邮件。
execute store result score #accepted scr_ml_n run function scr_mail:send/new
data remove storage scr_mail:request mail
execute if score #accepted scr_ml_n matches 1 run return 1
tellraw @s [{"text":"[","color":"gold","bold":true},{"translate":"character.scr.postman","fallback":"驿差鹰","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"测试邮件登记失败，请检查邮箱初始化与奖励配置。","color":"red","bold":false}]
return 0
