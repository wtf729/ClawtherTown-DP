# A renamed player or reset scoreboard must reconnect to the UUID record, never overwrite Main.
$execute if data storage scr_profile:players players."$(key)".meta.pending run return run function scr_profile:initialize/locked with storage scr_profile:runtime work.ctx
$execute if data storage scr_profile:players players."$(key)".meta{initialized:1b} run return run function scr_profile:initialize/reconnect with storage scr_profile:runtime work.ctx
$execute if data storage scr_profile:players players."$(key)".profiles.main run return run function scr_profile:switch/fault
$execute unless data storage scr_profile:players players."$(key)" run data modify storage scr_profile:players players."$(key)" set value {profiles:{},meta:{initialized:0b,current:0}}
# No Live Data has been saved or cleared. An unready section retries on a later tick.
execute store result score @s scr_pf_ok run function scr_profile:adapter/open
execute unless score @s scr_pf_ok matches 1 run return 0
scoreboard players set @s scr_pf_cur 1
data modify storage scr_profile:runtime work.ctx.from set value 1
scoreboard players set @s scr_pf_lock 1
scoreboard players set @s scr_pf_phase 1
execute store result score @s scr_pf_ok run function scr_profile:initialize/transaction
execute unless score @s scr_pf_ok matches 1 run function scr_profile:switch/fault
