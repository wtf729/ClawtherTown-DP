scoreboard players add #hub_clock scr_sk 1
execute unless score #hub_clock scr_sk matches 20.. run return 0
scoreboard players set #hub_clock scr_sk 0
execute as @a[gamemode=!creative,gamemode=!spectator,scores={scr_pf_init=1,scr_pf_cur=5,scr_pf_lock=0}] at @s if predicate scr:location/in_sky run function scr_sky:hub/effects
