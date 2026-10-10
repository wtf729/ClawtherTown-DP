scoreboard players set #copied scr_sk 0
execute in scr:sky unless loaded -1048576 0 -1048576 run return 0
execute in scr_sky:scanner unless loaded 0 0 0 run return 0
$execute store success score #copied scr_sk run clone from scr:sky -1048576 $(ref_y) -1048576 -1048561 $(ref_end) -1048561 to scr_sky:scanner 0 0 0 strict replace normal
