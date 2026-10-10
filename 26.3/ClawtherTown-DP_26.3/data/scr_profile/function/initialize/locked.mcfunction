$execute store result score @s scr_pf_cur run data get storage scr_profile:players players."$(key)".meta.pending.from
$execute store result score @s scr_pf_phase run data get storage scr_profile:players players."$(key)".meta.pending.phase
return run function scr_profile:switch/fault
