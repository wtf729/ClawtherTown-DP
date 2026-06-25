##计分板
#版本
scoreboard objectives add version dummy
scoreboard players set #server version 14

#初始设定
forceload add 0 0
setworldspawn 0 64 0

#菜单
scoreboard objectives add i trigger

#超级op
scoreboard objectives add superop dummy

#胡萝卜钓竿右键检测
scoreboard objectives add scr_right_click minecraft.used:minecraft.carrot_on_a_stick

##维度
#主世界
scoreboard objectives add spawn trigger
#星辰之地
scoreboard objectives add in_star_realm dummy
scoreboard objectives add star trigger

scoreboard objectives add star_realm_challenge_i_checkpoint dummy
scoreboard objectives add star_realm_challenge_i_progress dummy
scoreboard objectives add star_realm_challenge_i_total dummy
scoreboard objectives add star_realm_challenge_i_load trigger
scoreboard players set #server star_realm_challenge_i_total 40


#工具冷却
scoreboard objectives add cd dummy
scoreboard objectives add cd_second dummy
scoreboard players set #second cd_second 20
scoreboard objectives add cd_staff_sapphire_star dummy
scoreboard objectives add cd_case dummy
scoreboard objectives add cd_branch_apple_i dummy
scoreboard objectives add cd_branch_absorption_i dummy
scoreboard objectives add cd_branch_absorption_ii dummy
scoreboard objectives add cd_branch_health_i dummy
scoreboard objectives add cd_branch_health_ii dummy
scoreboard objectives add cd_staff_clear_spring dummy
scoreboard objectives add cd_staff_clear_spring_custom_1 dummy
scoreboard objectives add cd_staff_strong_wind dummy
scoreboard objectives add cd_staff_wind dummy


#强力怪物
scoreboard objectives add entity_modify dummy
execute unless score #server entity_modify matches 0.. run scoreboard players set #server entity_modify 1

#生存锁
scoreboard objectives add survival_lock dummy
execute unless score #server survival_lock matches 0.. run scoreboard players set #server survival_lock 0
scoreboard players add #server survival_lock 0

#物品清理
scoreboard objectives add item_cleaning dummy
execute unless score #server item_cleaning matches 0.. run scoreboard players set #server item_cleaning 1
scoreboard players set #item_cleaning timecounter 7100
scoreboard players set #item_limit item_cleaning 250
scoreboard players set #instant_clear_limit item_cleaning 500
scoreboard players add #item_cleaning_stage item_cleaning 0
scoreboard players add #instant_clear item_cleaning 0

#在线奖励
scoreboard objectives add treward dummy
execute unless score #server treward matches 0.. run scoreboard players set #server treward 1
scoreboard objectives add treward_mark dummy
scoreboard objectives add treward_fa dummy
scoreboard players add #treward_stage treward 0
scoreboard players add #treward_cycle treward 0
execute if score #treward_cycle treward matches 0 run scoreboard players set #treward_cycle treward 1


#服务器特殊
scoreboard objectives add scr_glowing dummy
scoreboard objectives add scr_kill dummy
scoreboard objectives add scr_mute dummy



#计时器
scoreboard objectives add timecounter dummy
scoreboard objectives add timecounter_entity dummy
scoreboard players set #second timecounter 20
scoreboard players set #minute timecounter 60
scoreboard players set #hour timecounter 60
scoreboard players set #day timecounter 24
scoreboard players set #year timecounter 365

scoreboard objectives add time_second dummy
scoreboard objectives add time_minute dummy
scoreboard objectives add time_hour dummy
scoreboard objectives add time_day dummy
scoreboard objectives add time_year dummy
scoreboard players add #server time_second 0
scoreboard players add #server time_minute 0
scoreboard players add #server time_hour 0
scoreboard players add #server time_day 0
scoreboard players add #server time_year 0

scoreboard objectives add time_online_second dummy
scoreboard objectives add time_online_minute dummy
scoreboard objectives add time_online_hour dummy
scoreboard objectives add time_online_day dummy
scoreboard objectives add time_online_year dummy

scoreboard objectives add time_daily_second dummy
scoreboard objectives add time_daily_minute dummy
scoreboard objectives add time_daily_minute_only dummy
scoreboard objectives add time_daily_hour dummy
scoreboard objectives add time_daily_hour_remind dummy
scoreboard players set #server time_daily_hour_remind 3

scoreboard objectives add time_day_sign_in dummy
scoreboard players add #server time_day_sign_in 0
execute if score #server time_day_sign_in matches 0 run scoreboard players set #server time_day_sign_in 2
scoreboard objectives add time_daily_sign_in dummy
scoreboard objectives add time_daily_sign_in_times dummy
scoreboard objectives add time_daily_sign_in_streak dummy
scoreboard objectives add time_daily_sign_in_streak_record dummy
#生日
scoreboard objectives add birthday_tommorrow dummy

#随机数
scoreboard objectives add scr_random dummy
function scr:random/random100000
function scr:random/random100000_entity_modify
function scr:random/random100000_tellraw



#商店
scoreboard objectives add shop trigger
scoreboard objectives add shop_affordable_amount dummy
scoreboard objectives add shop_buy_unit_price dummy
scoreboard objectives add shop_buy_selected_item dummy
scoreboard objectives add shop_buy_item_paid dummy
scoreboard objectives add shop_buy_amount dummy
scoreboard objectives add shop_bill dummy

scoreboard objectives add shop_sell_unit_price dummy
scoreboard objectives add shop_sell_unit_price_sold dummy
scoreboard objectives add shop_sell_selected_item dummy
scoreboard objectives add shop_sell_amount dummy
scoreboard objectives add shop_sell_item_sold dummy
scoreboard objectives add shop_income dummy

scoreboard objectives add shop_case_selected_item dummy
scoreboard objectives add shop_case_unit_price dummy
scoreboard objectives add shop_case_amount dummy
scoreboard objectives add shop_case_bill dummy
scoreboard objectives add shop_case_item_paid dummy

scoreboard objectives add shop_key_selected_item dummy
scoreboard objectives add shop_key_unit_price dummy
scoreboard objectives add shop_key_amount dummy
scoreboard objectives add shop_key_bill dummy
scoreboard objectives add shop_key_item_paid dummy


#神秘箱货币
scoreboard objectives add mystic_dust dummy
scoreboard objectives add mystic_coin dummy

#开箱
scoreboard objectives add case_opening dummy
scoreboard objectives add case_opening_luck dummy
scoreboard objectives add case_opening_case dummy
scoreboard objectives add case_opening_time dummy
scoreboard objectives add case_opening_time_click dummy
scoreboard objectives add case_opening_time_draw dummy
scoreboard objectives add case_count dummy
scoreboard objectives add case_count_i dummy
scoreboard objectives add case_count_ii dummy
scoreboard objectives add case_count_iii dummy
scoreboard objectives add case_count_iv dummy
scoreboard objectives add case_count_v dummy
scoreboard objectives add case_opening_fast dummy
scoreboard objectives add case_opening_fast_total dummy
scoreboard objectives add case_opening_fast_remain dummy
scoreboard objectives add case_opening_fast_wait dummy

#电梯
scoreboard objectives add elevator_cd dummy
scoreboard objectives add elevator_jump minecraft.custom:minecraft.jump

#告示
scoreboard objectives add notice dummy

#血量
scoreboard objectives add health health
scoreboard objectives setdisplay list health


#加成组
scoreboard objectives add level_group dummy
scoreboard objectives add duration_level_group dummy
scoreboard objectives add duration_second_level_group dummy
scoreboard objectives add duration_minute_level_group dummy
scoreboard objectives add duration_hour_level_group dummy
scoreboard objectives add duration_day_level_group dummy

scoreboard objectives add clawther_coin_double dummy
scoreboard objectives add duration_second_clawther_coin_double dummy
scoreboard objectives add duration_minute_clawther_coin_double dummy
scoreboard objectives add duration_hour_clawther_coin_double dummy

scoreboard objectives add soul_double dummy
scoreboard objectives add duration_second_soul_double dummy
scoreboard objectives add duration_minute_soul_double dummy
scoreboard objectives add duration_hour_soul_double dummy

scoreboard objectives add duration dummy
scoreboard objectives add duration_calculate dummy
scoreboard players set #second duration 20
scoreboard players set #minute duration 1200
scoreboard players set #hour duration 72000
scoreboard players set #day duration 1728000


#物品消耗
scoreboard objectives add item_count dummy
scoreboard objectives add item_consume_cold_down dummy
scoreboard objectives add item_consume_soul dummy
scoreboard objectives add item_consume_clawther_coin dummy
#鹰翎币
scoreboard objectives add money trigger
scoreboard objectives add clawther_coin dummy
scoreboard objectives add clawther_coin_add dummy
scoreboard objectives add clawther_coin_calculate dummy
scoreboard objectives add clawther_coin_multiplier dummy
#灵魂
scoreboard objectives add soul dummy
scoreboard objectives add soul_level dummy {"text":"","extra":[{"text":"灵魂等级","bold":true,"color":"#4dd9ff"}]}
scoreboard objectives add soul_add dummy
scoreboard objectives add soul_calculate dummy
scoreboard objectives add soul_require dummy
scoreboard objectives add soul_title_countdown dummy
scoreboard objectives add soul_multiplier dummy


scoreboard objectives setdisplay below_name soul_level

#幻梦翎片
scoreboard objectives add dream_wing dummy

#头戴物品
scoreboard objectives add sethat trigger

#帮助
scoreboard objectives add scrhelp trigger

#游戏模式
scoreboard objectives add gamemode trigger

#颜色
team add white
team modify white color white
team add dark_green
team modify dark_green color dark_green
team add green
team modify green color green
team add blue
team modify blue color blue
team add dark_aqua
team modify dark_aqua color dark_aqua
team add yellow
team modify yellow color yellow
team add gold
team modify gold color gold
team add aqua
team modify aqua color aqua
team add dark_purple
team modify dark_purple color dark_purple
team add light_purple
team modify light_purple color light_purple
team add red
team modify red color red
team add dark_red
team modify dark_red color dark_red

team add black
team modify black color black
team add dark_blue
team modify dark_blue color dark_blue
team add dark_gray
team modify dark_gray color dark_gray
team add gray
team modify gray color gray



#称号
scoreboard objectives add title trigger
scoreboard objectives add stage dummy
scoreboard objectives add title_advancements_1 dummy
scoreboard objectives add title_advancements_2 dummy
scoreboard objectives add title_advancements_3 dummy
scoreboard objectives add title_advancements_4 dummy
scoreboard objectives add title_special_1 dummy
scoreboard objectives add title_special_2 dummy
scoreboard objectives add title_special_3 dummy
scoreboard objectives add title_special_4 dummy
scoreboard objectives add title_special_5 dummy

team add stage_1
team modify stage_1 color white
team modify stage_1 prefix {"translate":"team.scr.stage_1.prefix","color":"green"}
team modify stage_1 suffix {"translate":"team.scr.stage_1.suffix","color":"white"}

team add stage_2
team modify stage_2 color white
team modify stage_2 prefix {"translate":"team.scr.stage_2.prefix","color":"dark_green"}
team modify stage_2 suffix {"translate":"team.scr.stage_2.suffix","color":"white"}

team add stage_3
team modify stage_3 color white
team modify stage_3 prefix {"translate":"team.scr.stage_3.prefix","color":"dark_aqua"}
team modify stage_3 suffix {"translate":"team.scr.stage_3.suffix","color":"white"}

team add stage_4
team modify stage_4 color yellow
team modify stage_4 prefix {"translate":"team.scr.stage_4.prefix","color":"gold"}
team modify stage_4 suffix {"translate":"team.scr.stage_4.suffix","color":"white"}

team add stage_5
team modify stage_5 color yellow
team modify stage_5 prefix {"translate":"team.scr.stage_5.prefix","color":"light_purple"}
team modify stage_5 suffix {"translate":"team.scr.stage_5.suffix","color":"white"}

team add stage_6
team modify stage_6 color yellow
team modify stage_6 prefix {"translate":"team.scr.stage_6.prefix","color":"red"}
team modify stage_6 suffix {"translate":"team.scr.stage_6.suffix","color":"white"}

team add title_advancements_1
team modify title_advancements_1 color yellow
team modify title_advancements_1 prefix {"translate":"team.scr.title_advancements_1.prefix","color":"aqua"}
team modify title_advancements_1 suffix {"translate":"team.scr.title_advancements_1.suffix","color":"white"}

team add title_advancements_2
team modify title_advancements_2 color yellow
team modify title_advancements_2 prefix {"translate":"team.scr.title_advancements_2.prefix","color":"red"}
team modify title_advancements_2 suffix {"translate":"team.scr.title_advancements_2.suffix","color":"light_purple"}

team add title_advancements_3
team modify title_advancements_3 color yellow
team modify title_advancements_3 prefix {"translate":"team.scr.title_advancements_3.prefix","color":"aqua"}
team modify title_advancements_3 suffix {"translate":"team.scr.title_advancements_3.suffix","color":"gold"}

team add title_advancements_4
team modify title_advancements_4 color yellow
team modify title_advancements_4 prefix {"translate":"team.scr.title_advancements_4.prefix","color":"aqua"}
team modify title_advancements_4 suffix {"translate":"team.scr.title_advancements_4.suffix","color":"white"}

team add title_special_1
team modify title_special_1 color white
team modify title_special_1 prefix {"translate":"team.scr.title_special_1.prefix","color":"gold"}
team modify title_special_1 suffix {"translate":"team.scr.title_special_1.suffix","color":"yellow"}

team add title_special_2
team modify title_special_2 color white
team modify title_special_2 prefix {"translate":"team.scr.title_special_2.prefix","color":"aqua"}
team modify title_special_2 suffix {"translate":"team.scr.title_special_2.suffix","color":"yellow"}

team add title_special_3
team modify title_special_3 color white
team modify title_special_3 prefix {"translate":"team.scr.title_special_3.prefix","color":"gold"}
team modify title_special_3 suffix {"translate":"team.scr.title_special_3.suffix","color":"yellow"}

team add title_special_4
team modify title_special_4 color white
team modify title_special_4 prefix {"translate":"team.scr.title_special_4.prefix","color":"aqua"}
team modify title_special_4 suffix {"translate":"team.scr.title_special_4.suffix","color":"yellow"}

team add title_special_5
team modify title_special_5 color white
team modify title_special_5 prefix {"translate":"team.scr.title_special_5.prefix","color":"gold"}
team modify title_special_5 suffix {"translate":"team.scr.title_special_5.suffix","color":"white"}


#展览馆
scoreboard objectives add gallery trigger

#死亡
scoreboard objectives add killed_by_player_trigger minecraft.killed_by:minecraft.player
scoreboard objectives add death_trigger deathCount
scoreboard objectives add death_loss dummy
scoreboard players set #numerator death_loss 10
scoreboard players set #denominator death_loss 1000
scoreboard players set #free death_loss 300


#杂项计分板
scoreboard objectives add not_newcomer dummy


#文字展示
kill @e[type=minecraft:text_display,predicate=scr:location/in_memory_land]
execute in scr:memory_land run summon minecraft:text_display 0 101 -8 {text:"一周目",shadow:true,billboard:center,brightness:{block:15,sky:15}}
execute in scr:memory_land run summon minecraft:text_display 8 101 0 {text:"二周目",shadow:true,billboard:center,brightness:{block:15,sky:15}}
execute in scr:memory_land run summon minecraft:text_display 0 101 8 {text:"三周目",shadow:true,billboard:center,brightness:{block:15,sky:15}}
execute in scr:memory_land run summon minecraft:text_display -8 101 0 {text:"四周目",shadow:true,billboard:center,brightness:{block:15,sky:15}}

#Home
scoreboard objectives add home_target dummy
scoreboard objectives add home_affected dummy

#外部数据包
scoreboard objectives add back trigger "Back"
scoreboard objectives add back.config dummy "Back Config"
scoreboard objectives add back.dummy dummy
scoreboard objectives add back.delay dummy
scoreboard objectives add back.cooldown dummy
scoreboard objectives add back.deaths deathCount
scoreboard objectives add back.x dummy
scoreboard objectives add back.y dummy
scoreboard objectives add back.z dummy
execute unless score #death back.config matches 0..1 run scoreboard players set #death back.config 0
execute unless score #delay back.config matches 0.. run scoreboard players set #delay back.config 0
execute unless score #cooldown back.config matches 0.. run scoreboard players set #cooldown back.config 0
execute in minecraft:overworld store result score #prevOverworldDoImmediateRespawn back.dummy run gamerule doImmediateRespawn
execute in minecraft:the_nether store result score #prevNetherDoImmediateRespawn back.dummy run gamerule doImmediateRespawn
execute in minecraft:overworld run gamerule doImmediateRespawn true
execute in minecraft:the_nether run gamerule doImmediateRespawn false
execute in minecraft:overworld store result score #dimGameRules back.dummy run gamerule doImmediateRespawn
execute if score #prevOverworldDoImmediateRespawn back.dummy matches 0 in minecraft:overworld run gamerule doImmediateRespawn false
execute if score #prevOverworldDoImmediateRespawn back.dummy matches 1 in minecraft:overworld run gamerule doImmediateRespawn true
execute if score #prevNetherDoImmediateRespawn back.dummy matches 1 in minecraft:the_nether run gamerule doImmediateRespawn true
scoreboard players set #prevOverworldDoImmediateRespawn back.dummy 0
scoreboard players set #prevNetherDoImmediateRespawn back.dummy 0
scoreboard players set #prevEndDoImmediateRespawn back.dummy 0
scoreboard players reset * back.deaths

scoreboard players set #death back.config 1
scoreboard players set #delay back.config 20
scoreboard players set #cooldown back.config 3

scoreboard objectives add sethome trigger "Set Home"
scoreboard objectives add homes trigger "Homes"
scoreboard objectives add home trigger "Home"
scoreboard objectives add namehome trigger "Name Home"
scoreboard objectives add delhome trigger "Delete Home"
scoreboard objectives add homes.target dummy
scoreboard objectives add homes.delay dummy
scoreboard objectives add homes.cooldown dummy
scoreboard objectives add homes.dummy dummy
scoreboard objectives add homes.config dummy "Homes Config"
scoreboard objectives add homes.x dummy
scoreboard objectives add homes.y dummy
scoreboard objectives add homes.z dummy
scoreboard objectives add homes.limit dummy "Max Home Limit"
execute unless score #limit homes.config matches 0.. run scoreboard players set #limit homes.config 1
execute unless score #delay homes.config matches 0.. run scoreboard players set #delay homes.config 0
execute unless score #cooldown homes.config matches 0.. run scoreboard players set #cooldown homes.config 0

scoreboard players set #limit homes.config 1000
scoreboard players set #delay homes.config 20
scoreboard players set #cooldown homes.config 3


##临时指令
scoreboard objectives modify soul_level displayname {"text":"","extra":[{"text":"灵魂等级","bold":true,"color":"#4dd9ff"}]}



##输出
say scr:SecretClawtherRealm - Successfully loaded.