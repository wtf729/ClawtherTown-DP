#使用胡萝卜钓竿
execute as @a[scores={scr_right_click=1..}] run function scr:right_click/use
#工具冷却
function scr:server_unique/cd
#手持效果
function scr:server_unique/handheld

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

execute as @a[scores={i=1..}] at @s run function scr:server_unique/i/i
scoreboard players enable @a i

execute as @a[scores={scrhelp=1..}] at @s run function scr:server_unique/help/help
scoreboard players enable @a scrhelp

execute as @a[scores={gamemode=1..}] at @s run function scr:gamemode/gamemode
scoreboard players enable @a gamemode

execute as @a[scores={title=1..}] at @s run function scr:title/title
scoreboard players enable @a title

execute as @a[scores={gallery=1..}] at @s run function scr:gallery/gallery
scoreboard players enable @a gallery

execute as @a[scores={death_trigger=1..}] at @s run function scr:server_unique/death/death

function scr:shop/shop_tick
execute as @a[scores={shop=1..}] at @s run function scr:shop/shop
scoreboard players enable @a shop

execute as @a[scores={money=1..}] at @s run function scr:clawther_coin/tellraw
scoreboard players enable @a money

execute as @a[scores={sethat=1..}] at @s run function scr:hat/hat
scoreboard players enable @a sethat


#生存锁
execute if score #server survival_lock matches 1 run function scr:gamemode/survival_lock
#自动清扫
execute if score #server item_cleaning matches 1 run function scr:item_cleaning/item_cleaning
#在线奖励
execute if score #server treward matches 1 run function scr:treward/treward
#强力怪物
execute if score #server entity_modify matches 1 run function scr:entity_modify/entities


#村民
function scr:villager/tick



function scr:server_unique/teleport



#加成组
execute as @a at @s run function scr:group/group
#灵魂
function scr:soul/soul
#鹰翎币
function scr:clawther_coin/clawther_coin

function scr:server_unique/glowing
function scr:server_unique/kill
function scr:server_unique/mute
function scr:server_unique/gamerule
function scr:server_unique/notice/notice

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







#版本更新后回到服务器
execute as @a[scores={not_newcomer=1}] at @s unless score @s version = #server version run function scr:server_unique/back_to_server

#新人
execute as @a unless score @s not_newcomer matches 1 at @s run function scr:server_unique/newcomer


#同步玩家版本
execute as @a unless score @s version = #server version store result score @s version run scoreboard players get #server version
