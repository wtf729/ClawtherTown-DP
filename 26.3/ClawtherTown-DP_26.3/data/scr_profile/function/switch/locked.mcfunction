# Defer BEFORE lock/pending/save if the destination section cannot expose an adapter yet.
execute store result score @s scr_pf_ok run function scr_profile:adapter/open
execute unless score @s scr_pf_ok matches 1 run return 0
scoreboard players set @s scr_pf_lock 1
scoreboard players set @s scr_pf_phase 1
execute store result score @s scr_pf_ok run function scr_profile:switch/transaction
execute unless score @s scr_pf_ok matches 1 run function scr_profile:switch/fault
