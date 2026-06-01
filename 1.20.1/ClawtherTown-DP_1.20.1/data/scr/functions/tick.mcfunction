function scr:tick_update

#使用胡萝卜钓竿
execute as @a[scores={scr_right_click=1..}] run function scr:right_click/use
#工具冷却
function scr:cd
#手持效果
function scr:handheld

#高级合成
execute as @a at @s if block ~ ~-1 ~ minecraft:dropper run function scr:server_unique/craft/craft_dropper

#地面合成
function scr:server_unique/craft/craft_ground
function scr:server_unique/craft/enchant

#分解收藏品
function scr:server_unique/craft/cutter


function scr:time/time

#开箱
function scr:case/case

execute as @a[scores={i=1..}] at @s run function scr:serveruni/i/i
scoreboard players enable @a i

execute as @a[scores={scrafthelp=1..}] at @s run function scr:serveruni/help/help
scoreboard players enable @a scrafthelp

execute as @a[scores={gamemode=1..}] at @s run function scr:gamemode/gamemode
scoreboard players enable @a gamemode

execute as @a[scores={title=1..}] at @s run function scr:title/title
scoreboard players enable @a title

execute as @a[scores={death_trigger=1..}] at @s run function scr:serveruni/death/death

function scr:shop/shop_tick
execute as @a[scores={shop=1..}] at @s run function scr:shop/shop
scoreboard players enable @a shop

execute as @a[scores={money=1..}] at @s run function scr:clawther_coin/tellraw
scoreboard players enable @a money


#生存锁
execute if score #server survivallock matches 1 run function scr:gamemode/survivallock
#自动清扫
execute if score #item_cleaning item_cleaning matches 1 run function scr:item_cleaning/item_cleaning
#在线奖励
execute if score #treward treward matches 1 run function scr:treward/treward
#强力怪物
execute if score #server entity_modify matches 1 run function scr:entity_modify/entities



function scr:server_unique/teleport

function scr:soul/soul
function scr:clawther_coin/clawther_coin

function scr:serveruni/glowing
function scr:serveruni/kill
function scr:serveruni/silent
function scr:serveruni/noai
function scr:serveruni/gamerule
function scr:serveruni/notice/notice

##维度配置
#星辰之地
execute as @a[scores={in_star_realm=1}] at @s run function scr:dimension/star_realm/leave
execute as @a[scores={in_star_realm=1..}] at @s run scoreboard players remove @s in_star_realm 1
execute as @a[predicate=scr:location/in_star_realm] at @s run function scr:dimension/star_realm/tick

##传送
#spawn
execute as @a[scores={spawn=1..}] run function scr:dimension/overworld/spawn_only
scoreboard players enable @a spawn
#星辰之地
execute as @a[scores={star=1..}] run function scr:dimension/star_realm/enter
scoreboard players enable @a star

#电梯
execute as @a at @s run function scr:elevator/player/tick




#回到服务器
execute as @a[scores={not_newcomer=1}] at @s unless score @s version = #server version run function scr:serveruni/back_to_server

#回服奖励
execute as @a[scores={not_newcomer=1}] at @s unless score @s version = #server version run function scr:serveruni/back_to_server_reward

#新人
execute as @a unless score @s not_newcomer matches 1 at @s run function scr:serveruni/newcomer


#同步玩家版本
execute as @a unless score @s version = #server version store result score @s version run scoreboard players get #server version
