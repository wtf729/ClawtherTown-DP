execute in minecraft:the_nether store result score #doImmediateRespawn back.dummy run gamerule minecraft:immediate_respawn
execute if score #doImmediateRespawn back.dummy matches 1 if score #prevNetherDoImmediateRespawn back.dummy matches 0 run tellraw @a {"text":"除非游戏规则 'minecraft:immediate_respawn' 设置为 'false', 否则 Back 数据包无法正确检测你的死亡位置! 如果已禁用死亡位置保存功能, 你可以忽略此提示!","color":"red"}
scoreboard players operation #prevNetherDoImmediateRespawn back.dummy = #doImmediateRespawn back.dummy
execute in minecraft:the_end store result score #doImmediateRespawn back.dummy run gamerule minecraft:immediate_respawn
execute if score #doImmediateRespawn back.dummy matches 1 if score #prevEndDoImmediateRespawn back.dummy matches 0 run tellraw @a {"text":"除非游戏规则 'minecraft:immediate_respawn' 设置为 'false', 否则 Back 数据包无法正确检测你的死亡位置! 如果已禁用死亡位置保存功能, 你可以忽略此提示!","color":"red"}
scoreboard players operation #prevEndDoImmediateRespawn back.dummy = #doImmediateRespawn back.dummy